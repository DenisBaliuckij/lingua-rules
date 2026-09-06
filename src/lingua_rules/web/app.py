from __future__ import annotations

import os
from pathlib import Path

from fastapi import Depends, FastAPI, Form, HTTPException, Request
from fastapi.templating import Jinja2Templates

from lingua_rules.engine.features import (
    UnknownFeatureError,
    load_feature_vocabulary,
    validate_features,
)
from lingua_rules.engine.loader import (
    CategoryNotFoundError,
    LanguageNotFoundError,
    category_rule_path,
    load_language,
)
from lingua_rules.engine.paradigm_tests import run_paradigm_tests
from lingua_rules.engine.runner import NoRuleMatchedError, generate_form

app = FastAPI(title="lingua-rules")

_TEMPLATES_DIR = Path(__file__).parent / "templates"
templates = Jinja2Templates(directory=str(_TEMPLATES_DIR))


def get_rules_dir() -> Path:
    return Path(os.environ.get("LINGUA_RULES_DIR", "rules"))


def get_tests_dir() -> Path:
    return Path(os.environ.get("LINGUA_TESTS_DIR", "tests"))


@app.get("/")
def index(request: Request, rules_dir: Path = Depends(get_rules_dir)):
    languages = []
    if rules_dir.is_dir():
        for entry in sorted(p.name for p in rules_dir.iterdir() if p.is_dir()):
            try:
                languages.append(load_language(rules_dir, entry))
            except LanguageNotFoundError:
                continue
    return templates.TemplateResponse(
        request, "index.html", {"languages": languages}
    )


@app.get("/{lang}/category/{category}")
def category_page(
    request: Request,
    lang: str,
    category: str,
    rules_dir: Path = Depends(get_rules_dir),
):
    try:
        rule_path = category_rule_path(rules_dir, lang, category)
        vocab = load_feature_vocabulary(rules_dir, lang)
    except (LanguageNotFoundError, CategoryNotFoundError) as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    source = rule_path.read_text(encoding="utf-8")
    return templates.TemplateResponse(
        request,
        "category.html",
        {"lang": lang, "category": category, "source": source, "vocab": vocab},
    )


@app.get("/{lang}/category/{category}/try")
def try_it_form(
    request: Request,
    lang: str,
    category: str,
    rules_dir: Path = Depends(get_rules_dir),
):
    try:
        category_rule_path(rules_dir, lang, category)
        vocab = load_feature_vocabulary(rules_dir, lang)
    except (LanguageNotFoundError, CategoryNotFoundError) as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    return templates.TemplateResponse(
        request,
        "try_it.html",
        {"lang": lang, "category": category, "vocab": vocab},
    )


@app.post("/{lang}/category/{category}/try")
async def try_it_submit(
    request: Request,
    lang: str,
    category: str,
    lemma: str = Form(...),
    rules_dir: Path = Depends(get_rules_dir),
):
    form_data = await request.form()
    features = {
        key: value for key, value in form_data.items() if key != "lemma"
    }
    result: str | None = None
    error: str | None = None
    try:
        vocab = load_feature_vocabulary(rules_dir, lang)
        validate_features(vocab, features)
        result = generate_form(rules_dir, lang, category, lemma, features)
    except (LanguageNotFoundError, CategoryNotFoundError) as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    except (UnknownFeatureError, NoRuleMatchedError) as exc:
        error = str(exc)
    return templates.TemplateResponse(
        request,
        "try_it_result.html",
        {"lemma": lemma, "features": features, "result": result, "error": error},
    )


@app.get("/{lang}/tests")
def test_runner_view(
    request: Request,
    lang: str,
    rules_dir: Path = Depends(get_rules_dir),
    tests_dir: Path = Depends(get_tests_dir),
):
    results = run_paradigm_tests(rules_dir, tests_dir, lang)
    passed = sum(1 for r in results if r.passed)
    return templates.TemplateResponse(
        request,
        "test_results.html",
        {"lang": lang, "results": results, "passed": passed, "total": len(results)},
    )
