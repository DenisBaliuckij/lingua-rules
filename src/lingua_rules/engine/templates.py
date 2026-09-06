from __future__ import annotations

from pathlib import Path

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


def append_rule(
    rules_dir: Path, lang_code: str, category: str, template_name: str, **kwargs: str
) -> Path:
    template = _TEMPLATES.get(template_name)
    if template is None:
        known = ", ".join(_TEMPLATES)
        raise ValueError(f"unknown template '{template_name}' (known: {known})")

    rule_path = category_rule_path(rules_dir, lang_code, category)
    block = template.format(**kwargs)
    with rule_path.open("a", encoding="utf-8") as fh:
        fh.write(block)
    return rule_path
