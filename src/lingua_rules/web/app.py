from __future__ import annotations

import os
from pathlib import Path

from fastapi import Depends, FastAPI, Form, HTTPException, Request
from fastapi.responses import RedirectResponse
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates

from lingua_rules.engine.escaping import UnsafeFieldValueError
from lingua_rules.engine.features import (
    UnknownFeatureError,
    load_feature_vocabulary,
    validate_features,
)
from lingua_rules.engine.loader import (
    CategoryNotFoundError,
    LanguageNotFoundError,
    MalformedLanguageConfigError,
    category_rule_path,
    load_language,
)
from lingua_rules.engine.paradigm_tests import run_paradigm_tests
from lingua_rules.engine.runner import (
    InvalidLemmaError,
    NoRuleMatchedError,
    RuleFileParseError,
    generate_form,
)
from lingua_rules.engine.templates import MissingTemplateFieldError, append_rule

# Anything that means "this language/category isn't usable" -> a clean 404,
# never a 500. MalformedLanguageConfigError covers a stray or half-written
# directory under rules/.
_NOT_FOUND_ERRORS = (
    LanguageNotFoundError,
    CategoryNotFoundError,
    MalformedLanguageConfigError,
)

app = FastAPI(title="lingua-rules")

_TEMPLATES_DIR = Path(__file__).parent / "templates"
_STATIC_DIR = Path(__file__).parent / "static"
templates = Jinja2Templates(directory=str(_TEMPLATES_DIR))

app.mount("/static", StaticFiles(directory=str(_STATIC_DIR)), name="static")


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
            except (LanguageNotFoundError, MalformedLanguageConfigError):
                # A stray or half-written directory under rules/ must not take
                # down the whole index -- skip it and render the rest.
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
    except _NOT_FOUND_ERRORS as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    try:
        source = rule_path.read_text(encoding="utf-8")
    except FileNotFoundError:
        # Declaring a category before writing its .lp file is normal authoring.
        raise HTTPException(
            status_code=404,
            detail=f"rule file for category '{category}' does not exist yet",
        )
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
    except _NOT_FOUND_ERRORS as exc:
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
    except _NOT_FOUND_ERRORS as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    except (
        UnknownFeatureError,
        NoRuleMatchedError,
        InvalidLemmaError,
        RuleFileParseError,
    ) as exc:
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
    try:
        load_language(rules_dir, lang)
    except _NOT_FOUND_ERRORS as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    results = run_paradigm_tests(rules_dir, tests_dir, lang)
    passed = sum(1 for r in results if r.passed)
    return templates.TemplateResponse(
        request,
        "test_results.html",
        {"lang": lang, "results": results, "passed": passed, "total": len(results)},
    )


@app.get("/{lang}/category/{category}/new-rule")
def new_rule_form(
    request: Request,
    lang: str,
    category: str,
    rules_dir: Path = Depends(get_rules_dir),
):
    try:
        category_rule_path(rules_dir, lang, category)
    except _NOT_FOUND_ERRORS as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    return templates.TemplateResponse(
        request, "new_rule.html", {"lang": lang, "category": category, "error": None}
    )


@app.post("/{lang}/category/{category}/new-rule")
def new_rule_submit(
    request: Request,
    lang: str,
    category: str,
    feature_key: str = Form(""),
    suffix: str = Form(""),
    rules_dir: Path = Depends(get_rules_dir),
):
    try:
        append_rule(
            rules_dir, lang, category, "regular-affix", feature_key=feature_key, suffix=suffix
        )
    except _NOT_FOUND_ERRORS as exc:
        raise HTTPException(status_code=404, detail=str(exc))
    except (MissingTemplateFieldError, UnsafeFieldValueError, UnknownFeatureError) as exc:
        return templates.TemplateResponse(
            request,
            "new_rule.html",
            {"lang": lang, "category": category, "error": str(exc)},
        )
    return RedirectResponse(url=f"/{lang}/category/{category}", status_code=303)
