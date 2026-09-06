from fastapi.testclient import TestClient

from lingua_rules.web.app import app

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
