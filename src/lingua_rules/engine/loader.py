from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml


class LanguageNotFoundError(Exception):
    """Raised when no language directory exists for the requested code."""


class CategoryNotFoundError(Exception):
    """Raised when a requested category isn't declared for a language."""


@dataclass(frozen=True)
class LanguageInfo:
    code: str
    name: str
    iso639_3: str | None
    categories: list[str]


def language_dir(rules_dir: Path, lang_code: str) -> Path:
    lang_dir = rules_dir / lang_code
    if not lang_dir.is_dir():
        raise LanguageNotFoundError(
            f"no language '{lang_code}' found under {rules_dir}"
        )
    return lang_dir


def load_language(rules_dir: Path, lang_code: str) -> LanguageInfo:
    lang_dir = language_dir(rules_dir, lang_code)
    data = yaml.safe_load((lang_dir / "lang.yaml").read_text(encoding="utf-8"))
    return LanguageInfo(
        code=lang_code,
        name=data["name"],
        iso639_3=data.get("iso639_3"),
        categories=list(data.get("categories", [])),
    )


def category_rule_path(rules_dir: Path, lang_code: str, category: str) -> Path:
    language = load_language(rules_dir, lang_code)
    if category not in language.categories:
        available = ", ".join(language.categories) or "none"
        raise CategoryNotFoundError(
            f"language '{lang_code}' has no category '{category}' "
            f"(available: {available})"
        )
    return language_dir(rules_dir, lang_code) / f"{category}.lp"
