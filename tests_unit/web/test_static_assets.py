"""Static-asset wiring for the web UI.

The try-it panel and rule-builder templates use hx-post/hx-target attributes,
which only do anything if an htmx runtime is actually served and loaded. These
tests pin both halves of that contract: the file is reachable, and pages
reference it.
"""

from fastapi.testclient import TestClient

from lingua_rules.web.app import app

client = TestClient(app)


def test_htmx_runtime_is_served_from_static():
    response = client.get("/static/htmx.min.js")

    assert response.status_code == 200
    assert len(response.content) > 0


def test_index_page_loads_the_htmx_runtime():
    response = client.get("/")

    assert response.status_code == 200
    assert "/static/htmx.min.js" in response.text


def test_try_it_page_loads_the_htmx_runtime():
    response = client.get("/en/category/nouns/try")

    assert response.status_code == 200
    assert "/static/htmx.min.js" in response.text
    assert 'hx-post="/en/category/nouns/try"' in response.text
