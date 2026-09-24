import pytest
from fastapi.testclient import TestClient

from lingua_rules.web.app import app, get_rules_dir

client = TestClient(app)


def test_try_it_form_page_lists_feature_dimensions():
    response = client.get("/en/category/nouns/try")

    assert response.status_code == 200
    assert "number" in response.text


def test_try_it_post_returns_the_generated_form():
    response = client.post("/en/category/nouns/try", data={"lemma": "cat", "number": "plural"})

    assert response.status_code == 200
    assert "cats" in response.text


def test_try_it_post_reports_an_unknown_feature_value():
    response = client.post("/en/category/nouns/try", data={"lemma": "cat", "number": "dual"})

    assert response.status_code == 200
    assert "unknown value" in response.text


def test_try_it_form_404s_for_an_unknown_language():
    response = client.get("/zz/category/nouns/try")

    assert response.status_code == 404


def test_try_it_form_404s_for_an_unknown_category():
    response = client.get("/en/category/bogus-category/try")

    assert response.status_code == 404


def test_try_it_post_404s_for_an_unknown_language():
    response = client.post("/zz/category/nouns/try", data={"lemma": "cat", "number": "plural"})

    assert response.status_code == 404


def test_try_it_post_404s_for_an_unknown_category():
    response = client.post(
        "/en/category/bogus-category/try", data={"lemma": "cat", "number": "plural"}
    )

    assert response.status_code == 404


@pytest.fixture
def gap_rules_dir(tmp_path):
    """A synthetic language whose vocabulary declares a feature value that no
    rule actually produces a form/3 fact for.

    In the real rules/en/nouns.lp fixture, both declared values of the
    "number" dimension (singular/plural) are handled by a rule, so there's
    no way to reach NoRuleMatchedError through the app without first hitting
    UnknownFeatureError from validate_features. This fixture declares
    "plural" as a valid value (so it passes validation) but only implements
    the "singular" rule, so generate_form finds no matching form/3 fact.
    """
    lang_dir = tmp_path / "zz"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Synthetic\ncategories:\n  - nouns\n",
        encoding="utf-8",
    )
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n  number:\n    values: [singular, plural]\n",
        encoding="utf-8",
    )
    (lang_dir / "nouns.lp").write_text(
        'form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).\n',
        encoding="utf-8",
    )
    return tmp_path


def test_try_it_post_reports_no_rule_matched(gap_rules_dir):
    app.dependency_overrides[get_rules_dir] = lambda: gap_rules_dir
    try:
        response = client.post(
            "/zz/category/nouns/try", data={"lemma": "cat", "number": "plural"}
        )
    finally:
        app.dependency_overrides.pop(get_rules_dir, None)

    assert response.status_code == 200
    assert "error" in response.text
    assert "Traceback" not in response.text


def _two_dimension_language(tmp_path):
    lang_dir = tmp_path / "xx"
    lang_dir.mkdir()
    (lang_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n"
        "  number:\n    values: [singular, plural]\n"
        "  tense:\n    values: [present, past]\n",
        encoding="utf-8",
    )
    # nouns only use `number`; `tense` belongs to other categories
    (lang_dir / "nouns.lp").write_text(
        'form(L, "number=plural", @suffix(L, "s")) :- input_lemma(L).\n',
        encoding="utf-8",
    )
    return tmp_path


def _get_try_form(rules_dir, category="nouns"):
    app.dependency_overrides[get_rules_dir] = lambda: rules_dir
    try:
        return client.get(f"/xx/category/{category}/try")
    finally:
        app.dependency_overrides.clear()


def test_try_it_form_shows_only_the_dimensions_the_category_uses(tmp_path):
    response = _get_try_form(_two_dimension_language(tmp_path))

    assert response.status_code == 200
    assert '<select name="number">' in response.text
    assert '<select name="tense">' not in response.text


def test_try_it_form_preselects_a_dimension_every_rule_uses(tmp_path):
    response = _get_try_form(_two_dimension_language(tmp_path))

    assert '<option value="">— not set —</option>' in response.text
    assert '<option value="singular" selected>' in response.text


def test_try_it_form_leaves_dimensions_only_some_rules_use_unset(tmp_path):
    # verbs: every rule uses tense, only some use number
    rules_dir = _two_dimension_language(tmp_path)
    (rules_dir / "xx" / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns, verbs]\n", encoding="utf-8"
    )
    (rules_dir / "xx" / "verbs.lp").write_text(
        'form(L, "tense=present", L) :- input_lemma(L).\n'
        'form(L, "number=plural;tense=past", @suffix(L, "ed")) :- input_lemma(L).\n',
        encoding="utf-8",
    )

    response = _get_try_form(rules_dir, "verbs")

    assert '<option value="present" selected>' in response.text
    assert '<option value="singular" selected>' not in response.text
    assert '<select name="number">' in response.text


def test_try_it_form_shows_every_dimension_when_the_rule_file_has_no_keys(tmp_path):
    rules_dir = _two_dimension_language(tmp_path)
    (rules_dir / "xx" / "nouns.lp").write_text("% nothing yet\n", encoding="utf-8")

    response = _get_try_form(rules_dir)

    assert '<select name="number">' in response.text
    assert '<select name="tense">' in response.text


def test_try_it_post_ignores_dimensions_left_unset(tmp_path):
    rules_dir = _two_dimension_language(tmp_path)
    app.dependency_overrides[get_rules_dir] = lambda: rules_dir
    try:
        response = client.post(
            "/xx/category/nouns/try",
            data={"lemma": "cat", "number": "plural", "tense": ""},
        )
    finally:
        app.dependency_overrides.clear()

    assert response.status_code == 200
    assert "<strong>cats</strong>" in response.text
