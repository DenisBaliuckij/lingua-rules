"""Datasets: the non-logical part of a grammar, kept as tables next to the rules.

A rule file (``rules/<lang>/<category>.lp``) holds only logic. Everything that
is a list rather than a rule -- irregular forms, which class a lemma belongs
to, which nouns are animate, the endings of a paradigm table -- lives in
tab-separated files under ``rules/<lang>/data/`` and is turned into Clingo facts
when a form is generated:

``<category>.exceptions.tsv``
    Listed forms, one per row: ``lemma``, ``features``, ``form``. Each lemma
    becomes ``irregular("lemma").`` plus one ``form("lemma", "key", "form").``
    per row, exactly what the ``exception-override`` template used to write
    into the ``.lp`` file.

``<category>.paradigms.tsv``
    Paradigm tables: ``class``, ``features``, ``strip``, ``ending``. Each row
    becomes ``paradigm_ending(class, "key", strip, "ending").``; the rule
    written by the ``class-paradigm`` template turns these into forms.

``<category>.<anything>.tsv``
    Fact tables. The first column is the key (a lemma, or a class); every other
    column names a predicate and its type, e.g. ``noun_class`` or
    ``animate:flag``. A row ``стол  m_hard`` under the header
    ``lemma  noun_class`` becomes ``noun_class("стол", m_hard).``

Column types: ``string`` (quoted, the default for a key named ``lemma``),
``constant`` (a Clingo constant such as a class name; the default for other
columns), ``number`` and ``flag`` (``yes`` makes ``pred(key).``, an empty cell or
``no`` makes nothing). Columns named ``source`` and ``note`` are metadata (where
a row comes from, a comment) and produce no facts. Blank lines and lines
starting with ``#`` are ignored. Feature keys may be written in any order; they
are sorted when loaded.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path

from .escaping import escape_clingo_string
from .features import feature_key
from .loader import language_dir

DATA_DIRNAME = "data"
EXCEPTIONS = "exceptions"
PARADIGMS = "paradigms"
FACTS = "facts"

EXCEPTION_COLUMNS = ("lemma", "features", "form")
PARADIGM_COLUMNS = ("class", "features", "strip", "ending")
METADATA_COLUMNS = frozenset({"source", "note"})
TYPES = ("string", "constant", "number", "flag")
RESERVED_PREDICATES = frozenset({"form", "input_lemma", "paradigm_ending"})
FLAG_TRUE = frozenset({"yes", "true", "1", "x"})
FLAG_FALSE = frozenset({"", "no", "false", "0"})

IDENTIFIER_RE = re.compile(r"_*[a-z][A-Za-z0-9_]*\Z")
NUMBER_RE = re.compile(r"-?[0-9]+\Z")
DIM_RE = re.compile(r"[a-zA-Z_][a-zA-Z0-9_]*\Z")


class DatasetError(Exception):
    """A dataset file that cannot be read or has a malformed header or row."""


@dataclass(frozen=True)
class Column:
    name: str
    type: str  # one of TYPES, or "meta" for source/note

    @property
    def is_meta(self) -> bool:
        return self.type == "meta"


@dataclass(frozen=True)
class Row:
    line: int
    cells: tuple[str, ...]


@dataclass
class Dataset:
    path: Path
    kind: str
    columns: list[Column]
    rows: list[Row] = field(default_factory=list)

    @property
    def name(self) -> str:
        return self.path.name

    @property
    def key(self) -> Column:
        return self.columns[0]

    @property
    def lemma_keyed(self) -> bool:
        """Rows describe one lemma each, so only the requested lemma's rows matter."""
        return self.kind == EXCEPTIONS or (self.kind == FACTS and self.key.name == "lemma")

    def cell(self, row: Row, column: str) -> str:
        for index, col in enumerate(self.columns):
            if col.name == column:
                return row.cells[index]
        raise KeyError(column)

    def facts(self, lemma: str | None = None) -> list[str]:
        """Clingo facts for every row (or only ``lemma``'s rows when the table is lemma-keyed)."""
        rows = self.rows
        if lemma is not None and self.lemma_keyed:
            rows = [row for row in rows if self.cell(row, "lemma") == lemma]
        out: list[str] = []
        if self.kind == EXCEPTIONS:
            seen: set[str] = set()
            for row in rows:
                lem, key, form = (self.cell(row, c) for c in EXCEPTION_COLUMNS)
                q = escape_clingo_string(lem)
                if lem not in seen:
                    seen.add(lem)
                    out.append(f'irregular("{q}").')
                out.append(
                    f'form("{q}", "{normalize_key(key)}", "{escape_clingo_string(form)}").'
                )
        elif self.kind == PARADIGMS:
            for row in rows:
                cls, key, strip, ending = (self.cell(row, c) for c in PARADIGM_COLUMNS)
                out.append(
                    f'paradigm_ending({cls}, "{normalize_key(key)}", {strip or 0}, '
                    f'"{escape_clingo_string(ending)}").'
                )
        else:
            for row in rows:
                key = render_value(row.cells[0], self.key.type)
                for col, value in zip(self.columns[1:], row.cells[1:]):
                    if col.is_meta or value == "":
                        continue
                    if col.type == "flag":
                        if value.lower() in FLAG_TRUE:
                            out.append(f"{col.name}({key}).")
                    else:
                        out.append(f"{col.name}({key}, {render_value(value, col.type)}).")
        return out

    def feature_keys(self) -> list[tuple[int, str]]:
        """(line, key as written) for every row of a table that has a features column."""
        if self.kind not in (EXCEPTIONS, PARADIGMS):
            return []
        return [(row.line, self.cell(row, "features")) for row in self.rows]


def render_value(value: str, type_: str) -> str:
    if type_ == "string":
        return f'"{escape_clingo_string(value)}"'
    return value  # constant / number, validated when the file was read


def parse_key(raw: str) -> dict[str, str]:
    """``case=genitive;number=plural`` (``,`` also accepted) -> dict. Raises ValueError."""
    pairs: dict[str, str] = {}
    for part in re.split(r"[;,]", raw):
        dim, sep, value = part.strip().partition("=")
        dim, value = dim.strip(), value.strip()
        if not sep or not DIM_RE.match(dim) or not DIM_RE.match(value):
            raise ValueError(f"malformed feature key {raw!r}: expected dimension=value pairs")
        if dim in pairs:
            raise ValueError(f"feature key {raw!r} repeats dimension '{dim}'")
        pairs[dim] = value
    return pairs


def normalize_key(raw: str) -> str:
    return feature_key(parse_key(raw))


def data_dir(rules_dir: Path, lang_code: str) -> Path:
    return language_dir(rules_dir, lang_code) / DATA_DIRNAME


def dataset_paths(rules_dir: Path, lang_code: str, category: str) -> list[Path]:
    directory = data_dir(rules_dir, lang_code)
    if not directory.is_dir():
        return []
    return sorted(directory.glob(f"{category}.*.tsv"))


def kind_of(path: Path) -> str:
    table = path.name.split(".")[-2] if path.name.count(".") >= 2 else ""
    return {EXCEPTIONS: EXCEPTIONS, PARADIGMS: PARADIGMS}.get(table, FACTS)


def _parse_header(path: Path, kind: str, cells: list[str]) -> list[Column]:
    columns: list[Column] = []
    for index, cell in enumerate(cells):
        name, _, type_ = cell.strip().partition(":")
        name, type_ = name.strip(), type_.strip()
        if not IDENTIFIER_RE.match(name):
            raise DatasetError(f"{path}: header column {cell!r} is not a valid name")
        if name in METADATA_COLUMNS and index > 0:
            columns.append(Column(name, "meta"))
            continue
        if not type_:
            if kind == FACTS:
                type_ = "string" if index == 0 and name == "lemma" else "constant"
            else:
                type_ = "string"
        if type_ not in TYPES:
            raise DatasetError(
                f"{path}: column '{name}' has unknown type '{type_}' (known: {', '.join(TYPES)})"
            )
        if kind == FACTS and index > 0 and name in RESERVED_PREDICATES:
            raise DatasetError(f"{path}: column '{name}' would redefine a reserved predicate")
        if index == 0 and type_ == "flag":
            raise DatasetError(f"{path}: the key column '{name}' cannot be a flag")
        columns.append(Column(name, type_))
    names = [c.name for c in columns]
    duplicates = sorted({n for n in names if names.count(n) > 1})
    if duplicates:
        raise DatasetError(f"{path}: duplicate column(s) {duplicates}")
    if kind in (EXCEPTIONS, PARADIGMS):
        expected = EXCEPTION_COLUMNS if kind == EXCEPTIONS else PARADIGM_COLUMNS
        missing = [c for c in expected if c not in names]
        extra = [c for c in names if c not in expected and c not in METADATA_COLUMNS]
        if missing or extra:
            raise DatasetError(
                f"{path}: a {kind} table needs the columns {list(expected)} "
                f"(plus optional source/note); missing {missing}, unexpected {extra}"
            )
    elif len([c for c in columns if not c.is_meta]) < 2:
        raise DatasetError(f"{path}: a fact table needs a key column and at least one predicate")
    return columns


def _check_row(dataset: Dataset, row: Row) -> None:
    where = f"{dataset.path}:{row.line}"
    for col, value in zip(dataset.columns, row.cells):
        if col.is_meta:
            continue
        if col.type == "constant" and value and not IDENTIFIER_RE.match(value):
            raise DatasetError(
                f"{where}: {col.name} {value!r} is not a constant "
                "(lowercase letter first, then letters, digits, _)"
            )
        if col.type == "number" and value and not NUMBER_RE.match(value):
            raise DatasetError(f"{where}: {col.name} {value!r} is not a whole number")
        if col.type == "flag" and value.lower() not in FLAG_TRUE | FLAG_FALSE:
            raise DatasetError(f"{where}: {col.name} {value!r} is not a flag (yes / empty)")
    key_column = "lemma" if dataset.kind == EXCEPTIONS else dataset.key.name
    if not dataset.cell(row, key_column):
        raise DatasetError(f"{where}: the key column '{key_column}' is empty")
    if dataset.kind in (EXCEPTIONS, PARADIGMS):
        try:
            parse_key(dataset.cell(row, "features"))
        except ValueError as exc:
            raise DatasetError(f"{where}: {exc}") from exc
    if dataset.kind == EXCEPTIONS and not dataset.cell(row, "form"):
        raise DatasetError(f"{where}: the form is empty")
    if dataset.kind == PARADIGMS:
        cls, strip = dataset.cell(row, "class"), dataset.cell(row, "strip")
        if not IDENTIFIER_RE.match(cls):
            raise DatasetError(f"{where}: class {cls!r} is not a constant")
        if strip and not re.fullmatch(r"[0-9]+", strip):
            raise DatasetError(f"{where}: strip {strip!r} must be a number of letters (0, 1, 2 ...)")


def read_dataset(path: Path, errors: list[str] | None = None) -> Dataset:
    """Read one table. Malformed rows raise DatasetError, or are skipped and
    reported in ``errors`` when a list is given (lint wants every problem)."""
    try:
        text = path.read_text(encoding="utf-8-sig")
    except (OSError, UnicodeDecodeError) as exc:
        raise DatasetError(f"{path}: could not read: {exc}") from exc
    kind = kind_of(path)
    dataset: Dataset | None = None
    for number, raw in enumerate(text.splitlines(), start=1):
        if not raw.strip() or raw.lstrip().startswith("#"):
            continue
        cells = [cell.strip() for cell in raw.split("\t")]
        if dataset is None:
            dataset = Dataset(path, kind, _parse_header(path, kind, cells))
            continue
        try:
            if len(cells) > len(dataset.columns):
                raise DatasetError(
                    f"{path}:{number}: {len(cells)} cells but the header has "
                    f"{len(dataset.columns)} columns"
                )
            cells += [""] * (len(dataset.columns) - len(cells))
            row = Row(number, tuple(cells))
            _check_row(dataset, row)
        except DatasetError as exc:
            if errors is None:
                raise
            errors.append(str(exc))
            continue
        dataset.rows.append(row)
    if dataset is None:
        raise DatasetError(f"{path}: the file has no header line")
    return dataset


def load_datasets(
    rules_dir: Path, lang_code: str, category: str, errors: list[str] | None = None
) -> list[Dataset]:
    datasets = []
    for path in dataset_paths(rules_dir, lang_code, category):
        try:
            datasets.append(read_dataset(path, errors))
        except DatasetError as exc:
            if errors is None:
                raise
            errors.append(str(exc))
    return datasets


def dataset_program(
    rules_dir: Path, lang_code: str, category: str, lemma: str | None = None
) -> str:
    """All facts of a category's datasets as Clingo text (only ``lemma``'s rows of
    lemma-keyed tables when a lemma is given)."""
    lines: list[str] = []
    for dataset in load_datasets(rules_dir, lang_code, category):
        lines.extend(dataset.facts(lemma))
    return "\n".join(lines) + ("\n" if lines else "")


def dataset_key_dimensions(rules_dir: Path, lang_code: str, category: str) -> list[set[str]]:
    """Dimensions of every feature key in the category's tables (bad files are skipped)."""
    keys: list[set[str]] = []
    for dataset in load_datasets(rules_dir, lang_code, category, errors=[]):
        for _, raw in dataset.feature_keys():
            keys.append(set(parse_key(raw)))
    return keys
