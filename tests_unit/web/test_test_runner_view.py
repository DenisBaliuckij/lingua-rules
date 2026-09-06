from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_test_runner_view_shows_pass_summary_for_english():
    response = client.get("/en/tests")

    assert response.status_code == 200
    assert "3/3 passed" in response.text
