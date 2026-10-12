"""Templates: ready-made rules (written to ``<category>.lp``) and ready-made dataset
rows (written to ``data/<category>.<table>.tsv``).

Rule templates append Clingo text; data templates add a row to a table, creating
the file with its header when it does not exist yet. Logic goes to the rule file,
lists go to the tables (see ``datasets.py``).
"""

from __future__ import annotations

from pathlib import Path

from .datasets import (
    DATA_DIRNAME,
    EXCEPTION_COLUMNS,
    IDENTIFIER_RE,
    PARADIGM_COLUMNS,
    RESERVED_PREDICATES,
    TYPES,
    DatasetError,
    normalize_key,
    read_dataset,
)
from .escaping import (
    UnsafeFieldValueError,
    escape_clingo_string,
    reject_unsafe_characters,
)
from .features import feature_key, load_feature_vocabulary, validate_features
from .loader import category_rule_path, language_dir

REGULAR_AFFIX_TEMPLATE = (
    "\n"
    "% describe the paradigm this rule covers here\n"
    'form(Lemma, "{feature_key}", @suffix(Lemma, "{suffix}")) :- '
    "input_lemma(Lemma), not irregular(Lemma).\n"
)

REGULAR_PREFIX_TEMPLATE = (
    "\n"
    "% describe the paradigm this rule covers here\n"
    'form(Lemma, "{feature_key}", @prefix(Lemma, "{prefix}")) :- '
    "input_lemma(Lemma), not irregular(Lemma).\n"
)

CLASS_PARADIGM_TEMPLATE = (
    "\n"
    "% Paradigm tables: a lemma with {class_predicate}(Lemma, Class) gets one form per row\n"
    "% of data/{category}.paradigms.tsv for its class (drop `strip` letters, add `ending`).\n"
    "form(Lemma, Key, @strip_suffix_add(Lemma, Strip, Ending)) :- input_lemma(Lemma),\n"
    "    {class_predicate}(Lemma, Class), paradigm_ending(Class, Key, Strip, Ending),"
    " not irregular(Lemma).\n"
)

_RULE_TEMPLATES = {
    "regular-affix": REGULAR_AFFIX_TEMPLATE,
    "regular-prefix": REGULAR_PREFIX_TEMPLATE,
    "class-paradigm": CLASS_PARADIGM_TEMPLATE,
}

# Templates that add a dataset row instead of Clingo text.
_DATA_TEMPLATES = ("exception-override", "paradigm-ending", "lexicon-entry")

_TEMPLATE_REQUIRED_FIELDS = {
    "regular-affix": ("feature_key", "suffix"),
    "regular-prefix": ("feature_key", "prefix"),
    "class-paradigm": ("class_predicate",),
    "exception-override": ("lemma", "feature_key", "form"),
    "paradigm-ending": ("class_name", "feature_key"),
    "lexicon-entry": ("lemma", "predicate", "value"),
}

TEMPLATE_NAMES = (*_RULE_TEMPLATES, *_DATA_TEMPLATES)


class MissingTemplateFieldError(Exception):
    """Raised when append_rule is called without a field its template requires."""


class DuplicateEntryError(Exception):
    """Raised when a data template would contradict a row already in the table."""


def _parse_feature_key(feature_key: str) -> dict[str, str]:
    """Parse a ``dim=value;dim=value`` key back into a dict.

    This is the inverse of ``features.feature_key()``. A malformed pair is
    reported as an unsafe field value rather than silently written to disk.
    """
    parsed: dict[str, str] = {}
    for pair in feature_key.split(";"):
        dimension, sep, value = pair.partition("=")
        if not sep or not dimension.strip() or not value.strip():
            raise UnsafeFieldValueError(
                f"malformed feature_key {feature_key!r}: expected "
                "';'-joined dimension=value pairs"
            )
        parsed[dimension.strip()] = value.strip()
    return parsed


def _check_identifier(value: str, field: str) -> None:
    if not IDENTIFIER_RE.match(value):
        raise UnsafeFieldValueError(
            f"{field} {value!r} must be a Clingo name: a lowercase letter first, "
            "then letters, digits or _"
        )


def append_rule(
    rules_dir: Path, lang_code: str, category: str, template_name: str, **kwargs: str
) -> Path:
    """Apply a template; return the file written (the rule file or a table)."""
    if template_name not in TEMPLATE_NAMES:
        known = ", ".join(TEMPLATE_NAMES)
        raise ValueError(f"unknown template '{template_name}' (known: {known})")

    required = _TEMPLATE_REQUIRED_FIELDS.get(template_name, ())
    missing = [field for field in required if not kwargs.get(field)]
    if missing:
        raise MissingTemplateFieldError(
            f"template '{template_name}' requires field(s) {missing} "
            f"(got: {list(kwargs)})"
        )

    # Every value lands either inside a quoted Clingo string literal or in a
    # one-line table cell, so a line break (or, in a table, a tab) is never safe.
    for field, value in kwargs.items():
        reject_unsafe_characters(value, field)
        if template_name in _DATA_TEMPLATES and "\t" in value:
            raise UnsafeFieldValueError(f"{field} {value!r} contains a tab")

    feature_key_value = kwargs.get("feature_key")
    if feature_key_value is not None:
        vocab = load_feature_vocabulary(rules_dir, lang_code)
        parsed = _parse_feature_key(feature_key_value)
        validate_features(vocab, parsed)
        # The runner looks forms up by the canonical (sorted) key, so write that
        # form -- "tense=past;number=plural" would otherwise never match.
        kwargs["feature_key"] = feature_key(parsed)

    rule_path = category_rule_path(rules_dir, lang_code, category)
    if template_name in _DATA_TEMPLATES:
        return _append_data(rules_dir, lang_code, category, template_name, kwargs)

    if template_name == "class-paradigm":
        _check_identifier(kwargs["class_predicate"], "class_predicate")
        _ensure_table(
            _table_path(rules_dir, lang_code, category, "paradigms"), PARADIGM_COLUMNS
        )
        kwargs["category"] = category

    safe_kwargs = {
        field: escape_clingo_string(value) for field, value in kwargs.items()
    }
    block = _RULE_TEMPLATES[template_name].format(**safe_kwargs)
    with rule_path.open("a", encoding="utf-8") as fh:
        fh.write(block)
    return rule_path


# ------------------------------------------------------------------------- data rows


def _table_path(rules_dir: Path, lang_code: str, category: str, table: str) -> Path:
    return language_dir(rules_dir, lang_code) / DATA_DIRNAME / f"{category}.{table}.tsv"


def _ensure_table(path: Path, header: tuple[str, ...] | list[str]) -> None:
    if not path.exists():
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text("\t".join(header) + "\n", encoding="utf-8", newline="\n")


def _write_lines(path: Path, lines: list[str]) -> None:
    path.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")


def _append_row(path: Path, columns: list[str], values: dict[str, str]) -> None:
    lines = path.read_text(encoding="utf-8").splitlines()
    lines.append("\t".join(values.get(name, "") for name in columns).rstrip("\t"))
    _write_lines(path, lines)


def _same_key(dataset, row, column: str, value: str, key: str) -> bool:
    return dataset.cell(row, column) == value and normalize_key(
        dataset.cell(row, "features")
    ) == key


def _append_data(
    rules_dir: Path, lang_code: str, category: str, template_name: str, kwargs: dict[str, str]
) -> Path:
    if template_name == "exception-override":
        path = _table_path(rules_dir, lang_code, category, "exceptions")
        _ensure_table(path, EXCEPTION_COLUMNS)
        dataset = read_dataset(path)
        lemma, key, form = kwargs["lemma"], kwargs["feature_key"], kwargs["form"]
        for row in dataset.rows:
            if _same_key(dataset, row, "lemma", lemma, key):
                if dataset.cell(row, "form") == form:
                    return path  # already listed
                raise DuplicateEntryError(
                    f"{path}:{row.line} already lists {lemma} {key} as "
                    f"{dataset.cell(row, 'form')!r}; edit that row instead"
                )
        values = {"lemma": lemma, "features": key, "form": form}
        _append_row(path, [c.name for c in dataset.columns], values)
        return path

    if template_name == "paradigm-ending":
        _check_identifier(kwargs["class_name"], "class")
        strip = kwargs.get("strip") or "0"
        if not strip.isdigit():
            raise UnsafeFieldValueError(f"strip {strip!r} must be a number of letters")
        path = _table_path(rules_dir, lang_code, category, "paradigms")
        _ensure_table(path, PARADIGM_COLUMNS)
        dataset = read_dataset(path)
        cls, key = kwargs["class_name"], kwargs["feature_key"]
        for row in dataset.rows:
            if _same_key(dataset, row, "class", cls, key):
                raise DuplicateEntryError(
                    f"{path}:{row.line} already has an ending for {cls} {key}; "
                    "edit that row instead"
                )
        values = {"class": cls, "features": key, "strip": strip, "ending": kwargs.get("ending", "")}
        _append_row(path, [c.name for c in dataset.columns], values)
        return path

    # lexicon-entry: one lemma's value in one predicate column of <category>.lexicon.tsv
    lemma, predicate, value = kwargs["lemma"], kwargs["predicate"], kwargs["value"]
    value_type = kwargs.get("value_type") or "constant"
    _check_identifier(predicate, "predicate")
    if predicate in RESERVED_PREDICATES or predicate == "lemma":
        raise UnsafeFieldValueError(f"predicate '{predicate}' is reserved")
    if value_type not in TYPES:
        raise UnsafeFieldValueError(f"value_type must be one of {', '.join(TYPES)}")
    if value_type == "constant":
        _check_identifier(value, "value")
    spec = predicate if value_type == "constant" else f"{predicate}:{value_type}"
    path = _table_path(rules_dir, lang_code, category, "lexicon")
    _ensure_table(path, ["lemma", spec])
    dataset = read_dataset(path)
    names = [c.name for c in dataset.columns]
    if names[0] != "lemma":
        raise DatasetError(f"{path}: the first column must be 'lemma'")
    lines = path.read_text(encoding="utf-8").splitlines()
    if predicate not in names:
        # A new column: rows with fewer cells than the header read as empty there.
        header_index = next(
            i for i, line in enumerate(lines)
            if line.strip() and not line.lstrip().startswith("#")
        )
        lines[header_index] += "\t" + spec
        _write_lines(path, lines)
        names.append(predicate)
        dataset = read_dataset(path)
    column = names.index(predicate)
    for row in dataset.rows:
        if row.cells[0] != lemma:
            continue
        if row.cells[column] == value:
            return path
        if row.cells[column] == "":
            cells = list(row.cells)
            cells[column] = value
            lines[row.line - 1] = "\t".join(cells).rstrip("\t")
            _write_lines(path, lines)
            return path
    # no row with a free cell for this lemma: add one (facts are cumulative, so a
    # second row gives the lemma a second value, e.g. membership in two classes)
    _append_row(path, names, {"lemma": lemma, predicate: value})
    return path
