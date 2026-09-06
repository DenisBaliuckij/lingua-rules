from __future__ import annotations

import os
from pathlib import Path

from fastapi import Depends, FastAPI, HTTPException, Request
from fastapi.templating import Jinja2Templates

from lingua_rules.engine.features import load_feature_vocabulary
from lingua_rules.engine.loader import (
    CategoryNotFoundError,
    LanguageNotFoundError,
    category_rule_path,
    load_language,
)

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
