import pytest

from lingua_rules.engine.features import (
    UnknownFeatureError,
    feature_key,
    load_feature_vocabulary,
    validate_features,
)


def test_load_feature_vocabulary_reads_dimensions():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    assert vocab.dimensions["number"] == ["singular", "plural"]


def test_validate_features_accepts_known_dimension_and_value():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    validate_features(vocab, {"number": "plural"})  # must not raise


def test_validate_features_rejects_unknown_dimension():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    with pytest.raises(UnknownFeatureError):
        validate_features(vocab, {"case": "genitive"})


def test_validate_features_rejects_unknown_value():
    from pathlib import Path

    vocab = load_feature_vocabulary(Path("rules"), "en")

    with pytest.raises(UnknownFeatureError):
        validate_features(vocab, {"number": "dual"})


def test_feature_key_sorts_dimensions_for_a_canonical_string():
    assert feature_key({"number": "plural", "case": "genitive"}) == "case=genitive;number=plural"
    assert feature_key({"number": "plural"}) == "number=plural"
