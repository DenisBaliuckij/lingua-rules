"""Output containing non-ASCII letters must not crash when stdout is not UTF-8.

On Windows with a legacy code page (e.g. cp1251) Python encodes redirected or
piped output with that code page, which cannot represent letters such as "ä".
The CLI forces UTF-8 output instead. PYTHONIOENCODING simulates that code page
on any platform.
"""

import os
import subprocess
import sys
from pathlib import Path


def _run_cli(args, cwd: Path) -> subprocess.CompletedProcess:
    env = dict(os.environ, PYTHONIOENCODING="cp1251")
    env.pop("PYTHONUTF8", None)
    return subprocess.run(
        [sys.executable, "-m", "lingua_rules.cli.main", *args],
        cwd=cwd, capture_output=True, env=env, timeout=120,
    )


def _language_with_umlaut_form(tmp_path: Path) -> Path:
    lang_dir = tmp_path / "rules" / "xx"
    lang_dir.mkdir(parents=True)
    (lang_dir / "lang.yaml").write_text(
        "name: Test\ncategories: [nouns]\n", encoding="utf-8"
    )
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n  number:\n    values: [singular, plural]\n", encoding="utf-8"
    )
    (lang_dir / "nouns.lp").write_text(
        'form("Mann", "number=plural", "Männer") :- input_lemma("Mann").\n',
        encoding="utf-8",
    )
    return tmp_path


def test_generate_prints_non_ascii_forms_under_a_legacy_code_page(tmp_path):
    workdir = _language_with_umlaut_form(tmp_path)

    result = _run_cli(
        ["generate", "xx", "nouns", "Mann", "--features", "number=plural"], workdir
    )

    assert result.returncode == 0, result.stderr.decode("utf-8", "replace")
    assert result.stdout.decode("utf-8").strip() == "Männer"


def test_test_command_prints_non_ascii_forms_under_a_legacy_code_page(tmp_path):
    workdir = _language_with_umlaut_form(tmp_path)
    tests_dir = workdir / "tests" / "xx"
    tests_dir.mkdir(parents=True)
    (tests_dir / "nouns.paradigm.yaml").write_text(
        "lemma: Mann\ncategory: nouns\ncases:\n"
        "  - features: {number: plural}\n    expected: Männer\n",
        encoding="utf-8",
    )

    result = _run_cli(["test", "xx"], workdir)

    assert result.returncode == 0, result.stderr.decode("utf-8", "replace")
    assert "1/1 passed" in result.stdout.decode("utf-8")
