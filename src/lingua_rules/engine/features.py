from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import yaml

from .loader import language_dir


class UnknownFeatureError(Exception):
    """Raised when a feature bundle uses an undeclared dimension or value."""


@dataclass(frozen=True)
class FeatureVocabulary:
    dimensions: dict[str, list[str]]


def load_feature_vocabulary(rules_dir: Path, lang_code: str) -> FeatureVocabulary:
    lang_dir = language_dir(rules_dir, lang_code)
    data = yaml.safe_load((lang_dir / "features.yaml").read_text(encoding="utf-8"))
    dimensions = {
        name: list(spec["values"]) for name, spec in data["dimensions"].items()
    }
    return FeatureVocabulary(dimensions=dimensions)


def validate_features(vocab: FeatureVocabulary, features: dict[str, str]) -> None:
    for dimension, value in features.items():
        if dimension not in vocab.dimensions:
            declared = ", ".join(vocab.dimensions) or "none"
            raise UnknownFeatureError(
                f"unknown feature dimension '{dimension}' (declared: {declared})"
            )
        if value not in vocab.dimensions[dimension]:
            declared = ", ".join(vocab.dimensions[dimension]) or "none"
            raise UnknownFeatureError(
                f"unknown value '{value}' for dimension '{dimension}' "
                f"(declared: {declared})"
            )


def feature_key(features: dict[str, str]) -> str:
    return ";".join(f"{k}={v}" for k, v in sorted(features.items()))
