from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_index_lists_the_english_language():
    response = client.get("/")

    assert response.status_code == 200
    assert "English" in response.text


def test_category_page_shows_rule_source_and_feature_vocabulary():
    response = client.get("/en/category/nouns")

    assert response.status_code == 200
    assert "irregular" in response.text
    assert "number" in response.text


def test_category_page_404s_for_an_unknown_language():
    response = client.get("/zz/category/nouns")

    assert response.status_code == 404
