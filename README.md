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
    lingua-rules test en
    lingua-rules lint en
    lingua-rules new-rule en nouns --template regular-affix --feature-key number=plural --suffix s
    lingua-rules serve

## Web UI

    lingua-rules serve

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
