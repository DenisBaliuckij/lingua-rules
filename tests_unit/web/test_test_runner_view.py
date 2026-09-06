from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_test_runner_view_shows_pass_summary_for_english():
    response = client.get("/en/tests")

    assert response.status_code == 200
    assert "3/3 passed" in response.text


def test_test_runner_view_returns_404_for_unknown_language():
    response = client.get("/zz-unknown/tests")

    assert response.status_code == 404
