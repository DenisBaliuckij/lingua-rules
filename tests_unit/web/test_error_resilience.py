"""Whole-branch integration findings I3, I4, I5, I6, I9 for the web layer.

Each of these used to surface as a raw 500 (or an unreachable page) rather
than a clean 404 / in-page error.
"""

import shutil
from pathlib import Path

import pytest
from fastapi.testclient import TestClient

from lingua_rules.web.app import app, get_rules_dir

client = TestClient(app)


def _override_rules_dir(rules_dir):
    app.dependency_overrides[get_rules_dir] = lambda: rules_dir


@pytest.fixture(autouse=True)
def _clear_overrides():
    yield
    app.dependency_overrides.pop(get_rules_dir, None)


# --- I5: a malformed language directory doesn't take down the UI ---


@pytest.fixture
def rules_with_a_junk_directory(tmp_path):
    """A real language alongside a stray directory that isn't one.

    A __pycache__ under rules/ is the realistic case: it is a directory, so
    language_dir() accepts it, but it has no lang.yaml.
    """
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    (rules_dir / "__pycache__").mkdir()
    (rules_dir / "half_written").mkdir()
    (rules_dir / "half_written" / "lang.yaml").write_text(
        "categories: [nouns]\n", encoding="utf-8"  # no 'name' key
    )
    return rules_dir


def test_index_skips_a_malformed_language_and_still_renders(rules_with_a_junk_directory):
    _override_rules_dir(rules_with_a_junk_directory)

    response = client.get("/")

    assert response.status_code == 200
    assert "English" in response.text
    assert "__pycache__" not in response.text


def test_category_page_404s_for_a_malformed_language(rules_with_a_junk_directory):
    _override_rules_dir(rules_with_a_junk_directory)

    response = client.get("/__pycache__/category/nouns")

    assert response.status_code == 404


def test_test_runner_view_404s_for_a_malformed_language(rules_with_a_junk_directory):
    _override_rules_dir(rules_with_a_junk_directory)

    response = client.get("/half_written/tests")

    assert response.status_code == 404


# --- I3: a declared category whose .lp file isn't written yet ---


@pytest.fixture
def rules_with_an_unwritten_category(tmp_path):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    (rules_dir / "en" / "lang.yaml").write_text(
        "name: English\niso639_3: eng\ncategories:\n  - nouns\n  - verbs\n",
        encoding="utf-8",
    )
    return rules_dir


def test_category_page_404s_when_the_rule_file_is_not_written_yet(
    rules_with_an_unwritten_category,
):
    _override_rules_dir(rules_with_an_unwritten_category)

    response = client.get("/en/category/verbs")

    assert response.status_code == 404
    assert response.status_code != 500


# --- I4: a malformed .lp file is an in-page error, not a 500 ---


@pytest.fixture
def rules_with_a_malformed_rule_file(tmp_path):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    (rules_dir / "en" / "nouns.lp").write_text(
        'form(Lemma, "number=plural"\n', encoding="utf-8"
    )
    return rules_dir


def test_try_it_post_reports_a_parse_error_in_page(rules_with_a_malformed_rule_file):
    _override_rules_dir(rules_with_a_malformed_rule_file)

    response = client.post(
        "/en/category/nouns/try", data={"lemma": "cat", "number": "plural"}
    )

    assert response.status_code == 200
    assert "nouns.lp" in response.text
    assert "Traceback" not in response.text


# --- I9: a lemma containing a newline is an in-page error, not a 500 ---


def test_try_it_post_reports_an_invalid_lemma_in_page():
    response = client.post(
        "/en/category/nouns/try", data={"lemma": "cat\nbad", "number": "plural"}
    )

    assert response.status_code == 200
    assert "newline" in response.text
    assert "Traceback" not in response.text


# --- I6: the try-it panel, rule builder and test runner are reachable by link ---


def test_category_page_links_to_try_it_and_the_rule_builder():
    response = client.get("/en/category/nouns")

    assert response.status_code == 200
    assert 'href="/en/category/nouns/try"' in response.text
    assert 'href="/en/category/nouns/new-rule"' in response.text


def test_index_links_to_the_test_runner_for_each_language():
    response = client.get("/")

    assert response.status_code == 200
    assert 'href="/en/tests"' in response.text
