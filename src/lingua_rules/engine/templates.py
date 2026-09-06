from __future__ import annotations

from pathlib import Path

from .escaping import (
    UnsafeFieldValueError,
    escape_clingo_string,
    reject_unsafe_characters,
)
from .features import load_feature_vocabulary, validate_features
from .loader import category_rule_path

REGULAR_AFFIX_TEMPLATE = (
    "\n"
    "% describe the paradigm this rule covers here\n"
    'form(Lemma, "{feature_key}", @suffix(Lemma, "{suffix}")) :- '
    "input_lemma(Lemma), not irregular(Lemma).\n"
)

EXCEPTION_OVERRIDE_TEMPLATE = (
    "\n"
    'irregular("{lemma}").\n'
    'form("{lemma}", "{feature_key}", "{form}").\n'
)

_TEMPLATES = {
    "regular-affix": REGULAR_AFFIX_TEMPLATE,
    "exception-override": EXCEPTION_OVERRIDE_TEMPLATE,
}

_TEMPLATE_REQUIRED_FIELDS = {
    "regular-affix": ("feature_key", "suffix"),
    "exception-override": ("lemma", "feature_key", "form"),
}


class MissingTemplateFieldError(Exception):
    """Raised when append_rule is called without a field its template requires."""


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


def append_rule(
    rules_dir: Path, lang_code: str, category: str, template_name: str, **kwargs: str
) -> Path:
    template = _TEMPLATES.get(template_name)
    if template is None:
        known = ", ".join(_TEMPLATES)
        raise ValueError(f"unknown template '{template_name}' (known: {known})")

    required = _TEMPLATE_REQUIRED_FIELDS.get(template_name, ())
    missing = [field for field in required if not kwargs.get(field)]
    if missing:
        raise MissingTemplateFieldError(
            f"template '{template_name}' requires field(s) {missing} "
            f"(got: {list(kwargs)})"
        )

    # Every value below lands inside a quoted Clingo string literal in the
    # rendered template, so it must be validated and escaped before it is
    # written -- otherwise a value containing a '"' can close its literal and
    # inject arbitrary ASP clauses into an executed rule file.
    for field, value in kwargs.items():
        reject_unsafe_characters(value, field)

    feature_key_value = kwargs.get("feature_key")
    if feature_key_value is not None:
        vocab = load_feature_vocabulary(rules_dir, lang_code)
        validate_features(vocab, _parse_feature_key(feature_key_value))

    safe_kwargs = {
        field: escape_clingo_string(value) for field, value in kwargs.items()
    }

    rule_path = category_rule_path(rules_dir, lang_code, category)
    block = template.format(**safe_kwargs)
    with rule_path.open("a", encoding="utf-8") as fh:
        fh.write(block)
    return rule_path
