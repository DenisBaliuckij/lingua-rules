from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml


class LanguageNotFoundError(Exception):
    """Raised when no language directory exists for the requested code."""


class CategoryNotFoundError(Exception):
    """Raised when a requested category isn't declared for a language."""


class MalformedLanguageConfigError(Exception):
    """Raised when a language's YAML config is missing, unparseable, or incomplete.

    A directory under ``rules/`` that isn't really a language (a stray
    ``__pycache__``, a half-finished draft) must be reportable rather than
    crashing whatever happened to enumerate it.
    """


def load_language_yaml(lang_dir: Path, lang_code: str, filename: str) -> dict:
    """Read and parse one of a language's YAML config files.

    Any failure -- missing file, unreadable bytes, invalid YAML, or a
    non-mapping document -- is normalized to MalformedLanguageConfigError
    naming the language and the problem.
    """
    path = lang_dir / filename
    try:
        text = path.read_text(encoding="utf-8")
    except FileNotFoundError as exc:
        raise MalformedLanguageConfigError(
            f"language '{lang_code}' has no {filename} (expected at {path})"
        ) from exc
    except OSError as exc:
        raise MalformedLanguageConfigError(
            f"language '{lang_code}': could not read {filename}: {exc}"
        ) from exc

    try:
        data = yaml.safe_load(text)
    except yaml.YAMLError as exc:
        raise MalformedLanguageConfigError(
            f"language '{lang_code}': {filename} is not valid YAML: {exc}"
        ) from exc

    if not isinstance(data, dict):
        raise MalformedLanguageConfigError(
            f"language '{lang_code}': {filename} must be a mapping, "
            f"got {type(data).__name__}"
        )
    return data


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
    data = load_language_yaml(lang_dir, lang_code, "lang.yaml")
    try:
        name = data["name"]
    except KeyError as exc:
        raise MalformedLanguageConfigError(
            f"language '{lang_code}': lang.yaml is missing the required 'name' key"
        ) from exc

    categories = data.get("categories", [])
    if not isinstance(categories, list):
        raise MalformedLanguageConfigError(
            f"language '{lang_code}': lang.yaml 'categories' must be a list, "
            f"got {type(categories).__name__}"
        )

    return LanguageInfo(
        code=lang_code,
        name=name,
        iso639_3=data.get("iso639_3"),
        categories=list(categories),
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
