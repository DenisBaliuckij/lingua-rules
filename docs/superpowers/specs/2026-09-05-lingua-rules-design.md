# lingua-rules — Design

**Date:** 2026-09-05
**Status:** Approved

## Overview

A standalone Python system for linguists to author, browse, and test natural
language grammar rules — starting with morphology (noun/verb/etc. inflection)
and structured so syntax/phonology rule sets can be added later using the same
mechanism. Rules are stored as plain files in the repo (no database, no
external service dependency) and are executable locally: given a lemma and a
target grammatical feature bundle (e.g. case=genitive, number=plural), the
system generates the inflected form and can check it against linguist-authored
expected results.

This is an intentionally separate system from `GrammarDB`
(`grammar-db`/`text-corpuses-processing` — a SQL Server database on
`corpus-host` for storing grammar rules extracted from scraped descriptive-
grammar PDFs; see
`text-corpuses-processing/docs/superpowers/specs/2026-07-30-grammar-storage-database-design.md`).
`lingua-rules` has no dependency on SQL Server, `corpus-host`, or the
extraction/scraping pipeline. It deliberately reuses GrammarDB's *proven rule
formalism* — rules as Answer Set Programming (ASP) statements, with exceptions
modeled as a general rule guarded by default negation (`not <flag>`) plus a
separate higher-priority exception fact, and output tagged with a controlled
feature-dimension/value vocabulary — because that formalism was already
designed and validated for exactly this "general rule, unless a specific
exception applies" problem. It does not reuse any GrammarDB code, schema, or
infrastructure.

## Goals

- Let linguists define grammar rules for any language, as data files in this
  repo, without needing to write Python.
- Generate word forms: given a lemma + feature bundle, produce the inflected
  form(s) the current rule set implies.
- Let linguists write and run tests: golden-file fixtures (lemma + expected
  forms per feature bundle) checked against what the rule engine actually
  produces.
- Provide both a CLI (for scripting/CI) and a local web UI (for
  exploration and lower-friction authoring) over the same engine.
- Support many languages side by side, each independently rule-set and
  test-set.

## Non-goals (v1)

- No database or server backend — everything is files on disk, run locally.
- No multi-user auth, no hosted/shared deployment — a single-user local tool.
- No PDF/corpus extraction pipeline — that is GrammarDB's concern, not this
  repo's. If GrammarDB rules are ever migrated into `lingua-rules` files,
  that migration is a separate, later effort.
- No non-concatenative-morphology-specific tooling beyond what ASP already
  expresses (ASP can encode arbitrary relations, including root+pattern
  templates, but v1 ships no dedicated authoring shortcuts for that case).
- No syntax/phonology rule sets in v1 — the mechanism is designed to extend
  to them later (same file/engine/test shape), but only morphology rule
  content ships now.

## Rule formalism

Rules are literal Clingo (ASP) source files (`.lp`), one or more per language
per word category. The core pattern, carried over from the GrammarDB worked
example:

```prolog
% nouns.lp — English, regular plural
plural_of(Noun, Plural) :- noun(Noun), regular_plural(Noun, Plural), not irregular(Noun).
regular_plural(Noun, Plural) :- noun(Noun), Plural = Noun ++ "s".   % conceptual; actual string
                                                                     % ops below

% exceptions.lp
irregular(child).
plural_of(child, children).
```

(Clingo has no native string-concatenation operator; the engine handles
regular-affix string building in Python before asserting facts — see
Engine below. Rule files express *which* transformation applies and
*exceptions*, not raw string splicing.)

Each language directory also declares a **feature vocabulary**
(`features.yaml`) — the dimensions (Case, Number, Tense, Gender, Person,
Aspect, Mood, …) and their legal values — mirroring GrammarDB's
`FeatureDimension`/`FeatureValue` tables. This is used to:

- validate that rule files only produce/require declared feature values,
- label generated forms consistently across languages,
- drive the web UI's feature-picker when generating/testing forms.

## Repo layout

```
lingua-rules/
├── rules/
│   └── <lang-code>/              # e.g. en, lt, ru — ISO 639-3 where possible
│       ├── lang.yaml             # name, ISO code, list of word categories
│       ├── features.yaml         # feature dimensions/values for this language
│       └── <category>.lp         # one file per word category, e.g. nouns.lp, verbs.lp
├── tests/
│   └── <lang-code>/
│       └── <category>.paradigm.yaml   # golden-file fixtures for that category
├── src/lingua_rules/
│   ├── engine/
│   │   ├── loader.py              # discovers languages/categories, loads .lp + .yaml
│   │   ├── runner.py              # builds a Clingo program, runs the solver, extracts forms
│   │   └── features.py            # feature vocabulary validation
│   ├── cli/
│   │   └── main.py                # Typer app: generate, test, lint, new-rule, serve
│   └── web/
│       ├── app.py                 # FastAPI app
│       ├── templates/             # Jinja2 templates
│       └── static/                # HTMX + minimal CSS
├── docs/superpowers/specs/         # design docs (this file)
├── pyproject.toml
└── README.md
```

## Components

### Engine (`engine/`)

- `loader.py`: given a language code, finds its `rules/<lang>/` directory,
  parses `lang.yaml` and `features.yaml`, and returns the list of `.lp` files
  per category available for that language. Fails loudly (clear error) if a
  language/category doesn't exist or `features.yaml` is malformed.
- `runner.py`: given a language, category, lemma, and target feature bundle,
  (1) asserts the lemma and requested features as ASP facts, (2) combines
  them with the category's `.lp` rule files (base rules + exceptions),
  (3) invokes `clingo` (via the `clingo` Python package) to compute the
  answer set, (4) extracts the generated form(s) from the resulting facts
  (e.g. reads back `plural_of(lemma, X)`). Raises a clear error if the
  program is unsatisfiable or the target predicate produces no answer —
  linguists need to see "no rule matched this lemma/feature combination",
  not a silent empty result.
- `features.py`: validates that a feature bundle passed by a caller (CLI,
  web UI, or a test fixture) only uses dimension/value names declared in
  that language's `features.yaml`; rejects unknown ones with a specific
  error naming the bad key/value.

### CLI (`cli/`, built with Typer)

- `lingua-rules generate <lang> <category> <lemma> --features k=v,k=v` —
  prints the generated form(s).
- `lingua-rules test [lang] [--category X]` — runs golden-file tests, prints
  a pass/fail summary per case, non-zero exit code on any failure (usable in
  CI).
- `lingua-rules lint <lang>` — loads and validates a language's rule files
  and feature vocabulary without generating anything; reports parse errors
  and undeclared feature usage.
- `lingua-rules new-rule <lang> <category> --template regular-affix` —
  scaffolds a new `.lp` file section from a named template (starting
  template set: regular-affix, exception-override); prints where it wrote
  the file so the linguist edits it directly.
- `lingua-rules serve` — launches the local web UI (below).

### Web UI (`web/`, FastAPI + Jinja2 + HTMX)

Local-only (`127.0.0.1`), single process, no auth:

- **Language/category browser**: lists languages, drilling into a category
  shows its `.lp` source (syntax-highlighted, read-only view) with the
  feature vocabulary glossed alongside.
- **Try it panel**: pick language + category + enter a lemma + pick feature
  values from the declared vocabulary (dropdowns from `features.yaml`) →
  calls the engine and shows the generated form, or the "no rule matched"
  error with the facts that were asserted (for debugging a rule).
- **Rule builder (regular-affix template only, v1)**: a form (stem pattern,
  suffix/prefix to strip, suffix/prefix to add, target feature bundle) that
  writes a new rule block into the category's `.lp` file using the same
  template as the CLI's `new-rule` command. Anything more complex is edited
  as raw `.lp` text through the browser view or directly in an editor —
  the web UI does not attempt to be a full ASP authoring environment.
- **Test runner view**: pick a language, run its golden-file suite, see
  per-case pass/fail with actual-vs-expected diffs.

### Testing (`tests/`)

Golden-file fixtures, one YAML file per language+category:

```yaml
# tests/en/nouns.paradigm.yaml
lemma: cat
category: nouns
cases:
  - features: {number: plural}
    expected: cats
  - features: {number: singular}
    expected: cat
---
lemma: child
category: nouns
cases:
  - features: {number: plural}
    expected: children
```

The test runner loads every fixture under `tests/<lang>/`, calls the engine
for each `(lemma, features)` pair, and compares against `expected`. Failures
report lemma, requested features, expected vs. actual (or the engine's "no
rule matched" error) so a linguist can immediately see whether the rule set
needs a new exception or a fix to an existing rule.

## Data flow

```
linguist edits rules/<lang>/<category>.lp  (by hand, or via CLI/web template)
                    |
                    v
        engine.loader reads .lp + features.yaml
                    |
                    v
   CLI "generate"/"test"  or  web "try it"/"test runner"
                    |
                    v
        engine.runner asserts facts, invokes clingo
                    |
                    v
        generated form(s) read back from the answer set
                    |
                    v
   printed (CLI) / displayed (web) / diffed against fixture (test runner)
```

## Error handling

- Malformed `.lp` file (Clingo parse error): surfaced with the file path and
  Clingo's own parse error message — never swallowed.
- Unknown feature dimension/value in a request or fixture: rejected before
  reaching the solver, naming the bad key/value and the language's declared
  vocabulary.
- Unsatisfiable program / target predicate absent from the answer set: a
  distinct "no rule matched" result (not the same as an empty string), since
  linguists need to tell "the answer is empty" apart from "no rule applies".
- Missing language/category directory: clear "language X has no category Y"
  error listing what does exist.

## Packaging

- Python 3.11+, `pyproject.toml` (uv or plain pip-installable), dependencies:
  `clingo` (PyPI, cross-platform wheels including Windows), `typer` (CLI),
  `fastapi` + `jinja2` + `uvicorn` (web), `pyyaml` (fixtures/vocab files).
- No external services, no Docker requirement for v1 — `pip install -e .`
  and run.

## Open items / future extensions

- Migrating any existing GrammarDB rule content into `lingua-rules` files is
  out of scope here and would be its own effort if ever wanted.
- Syntax and phonology rule categories are structurally supported (same
  file/engine/test shape) but no content or category-specific tooling ships
  in v1.
- Non-concatenative morphology (root+pattern, reduplication, infixes) is
  expressible in raw ASP but has no dedicated authoring template yet —
  revisit if a specific language needs it.
- Rule-file version history beyond git log is not modeled specially; git
  itself is the audit trail.
