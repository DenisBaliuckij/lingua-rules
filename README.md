# lingua-rules

A system for linguists to author, browse, and test natural language grammar
rules. Rules are written as Clingo (Answer Set Programming) files, organized
per language and word category, and executed locally — no database, no
external service.

See `docs/superpowers/specs/2026-09-05-lingua-rules-design.md` for the full
design.

## Setup

    pip install -e ".[dev]"

## CLI

    lingua-rules generate en nouns cat --features number=plural
    lingua-rules test en                    # one language
    lingua-rules test                       # every language under tests/
    lingua-rules test en --category nouns   # just one category
    lingua-rules lint en
    lingua-rules new-rule en nouns --template regular-affix --feature-key number=plural --suffix s
    lingua-rules serve

Every command reads rules from `./rules` and golden-file tests from `./tests`
by default. Point them elsewhere with `--rules-dir` / `--tests-dir`:

    lingua-rules test --rules-dir /path/to/rules --tests-dir /path/to/tests

## Web UI

    lingua-rules serve
    lingua-rules serve --host 0.0.0.0 --port 9000
    lingua-rules serve --rules-dir /path/to/rules --tests-dir /path/to/tests

`serve` passes those directories to the web layer through the
`LINGUA_RULES_DIR` and `LINGUA_TESTS_DIR` environment variables, which the web
app reads per request (they default to `rules` and `tests`). Set them directly
if you run the ASGI app under your own server:

    LINGUA_RULES_DIR=/path/to/rules uvicorn lingua_rules.web.app:app

Then open http://127.0.0.1:8000 — browse languages and rule files, try
generating forms live, run the golden-file test suite, and add regular-affix
rules through a form.

## Rule files

Each language lives under `rules/<lang-code>/`:

- `lang.yaml` — name, ISO 639-3 code, declared word categories
- `features.yaml` — the feature dimensions/values that category rule files
  may use (e.g. `number: [singular, plural]`)
- `<category>.lp` — the Clingo rules for that category, general rules plus
  any lexeme-level exceptions

## Tests

Pytest unit tests: `pytest` (runs `tests_unit/`).
Golden-file grammar tests (linguist-authored fixtures under `tests/<lang>/`):
`lingua-rules test <lang>`.
