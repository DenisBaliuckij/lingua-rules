import shutil
from pathlib import Path

from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_new_rule_form_page_renders():
    response = client.get("/en/category/nouns/new-rule")

    assert response.status_code == 200
    assert "regular-affix" in response.text.lower() or "suffix" in response.text.lower()


def test_new_rule_post_appends_and_redirects(tmp_path, monkeypatch):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    monkeypatch.setenv("LINGUA_RULES_DIR", str(rules_dir))

    response = client.post(
        "/en/category/nouns/new-rule",
        data={"feature_key": "number=plural", "suffix": "es"},
        follow_redirects=False,
    )

    assert response.status_code in (302, 303, 307)
    assert '@suffix(Lemma, "es")' in (rules_dir / "en" / "nouns.lp").read_text(encoding="utf-8")


def test_new_rule_form_404s_for_an_unknown_language():
    response = client.get("/zz/category/nouns/new-rule")

    assert response.status_code == 404


def test_new_rule_form_404s_for_an_unknown_category():
    response = client.get("/en/category/bogus-category/new-rule")

    assert response.status_code == 404


def test_new_rule_post_404s_for_an_unknown_language():
    response = client.post(
        "/zz/category/nouns/new-rule",
        data={"feature_key": "number=plural", "suffix": "es"},
    )

    assert response.status_code == 404


def test_new_rule_post_404s_for_an_unknown_category():
    response = client.post(
        "/en/category/bogus-category/new-rule",
        data={"feature_key": "number=plural", "suffix": "es"},
    )

    assert response.status_code == 404


def test_new_rule_post_reports_a_missing_template_field(tmp_path, monkeypatch):
    rules_dir = tmp_path / "rules"
    shutil.copytree(Path("rules"), rules_dir)
    monkeypatch.setenv("LINGUA_RULES_DIR", str(rules_dir))
    original = (rules_dir / "en" / "nouns.lp").read_text(encoding="utf-8")

    response = client.post(
        "/en/category/nouns/new-rule",
        data={"feature_key": "number=plural", "suffix": ""},
    )

    assert response.status_code == 200
    assert "error" in response.text.lower()
    assert "Traceback" not in response.text
    # nothing was appended to the rule file when the field was missing
    assert (rules_dir / "en" / "nouns.lp").read_text(encoding="utf-8") == original
