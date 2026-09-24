"""Regenerate the screenshots used in README.md.

Builds a throw-away workspace (a copy of rules/ and tests/ plus the Dutch
walkthrough from README.md), starts the web UI on it, and drives a headless
browser through the pages with Selenium. The repository's own rules/ and
tests/ are never modified.

    python -m pip install -e ".[docs]"
    python docs/screenshots/capture.py

Uses Microsoft Edge by default; pass --browser chrome to use Chrome instead.
Selenium Manager downloads the matching driver automatically.
"""

from __future__ import annotations

import argparse
import shutil
import socket
import subprocess
import sys
import tempfile
import time
import urllib.request
from pathlib import Path

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.support.ui import Select, WebDriverWait

REPO = Path(__file__).resolve().parents[2]
OUT_DIR = REPO / "docs" / "images"

NL_LANG = """name: Dutch
iso639_3: nld
categories:
  - nouns
"""

NL_FEATURES = """dimensions:
  number:
    values: [singular, plural]
"""

NL_NOUNS = """% rules/nl/nouns.lp
% Dutch noun plurals. The singular is the lemma itself.

form(Lemma, "number=singular", Lemma) :- input_lemma(Lemma).
"""

NL_HAND_WRITTEN = """
% "museum" -> "musea": drop the last two letters ("um"), add "a".
irregular("museum").
form("museum", "number=plural", @strip_suffix_add("museum", 2, "a")).
"""

NL_TESTS = """lemma: boek
category: nouns
cases:
  - features: {number: singular}
    expected: boek
  - features: {number: plural}
    expected: boeken
---
lemma: kind
category: nouns
cases:
  - features: {number: plural}
    expected: kinderen
---
lemma: stad
category: nouns
cases:
  - features: {number: plural}
    expected: steden
---
lemma: museum
category: nouns
cases:
  - features: {number: plural}
    expected: musea
"""


def cli(workspace: Path, *args: str) -> None:
    """Run the CLI exactly as README.md does: python -m lingua_rules.cli.main ..."""
    subprocess.run(
        [sys.executable, "-m", "lingua_rules.cli.main", *args], cwd=workspace, check=True
    )


def build_workspace(workspace: Path) -> None:
    shutil.copytree(REPO / "rules", workspace / "rules")
    shutil.copytree(REPO / "tests", workspace / "tests")
    nl_rules = workspace / "rules" / "nl"
    nl_rules.mkdir()
    (nl_rules / "lang.yaml").write_text(NL_LANG, encoding="utf-8")
    (nl_rules / "features.yaml").write_text(NL_FEATURES, encoding="utf-8")
    (nl_rules / "nouns.lp").write_text(NL_NOUNS, encoding="utf-8")
    # Exceptions via the CLI template, as in README.md. The regular plural rule is
    # added through the web form below, so that step can be screenshotted.
    for lemma, form in (("kind", "kinderen"), ("stad", "steden")):
        cli(workspace, "new-rule", "nl", "nouns", "--template", "exception-override",
            "--feature-key", "number=plural", "--lemma", lemma, "--form", form)
    with (nl_rules / "nouns.lp").open("a", encoding="utf-8") as fh:
        fh.write(NL_HAND_WRITTEN)
    (workspace / "tests" / "nl").mkdir()
    (workspace / "tests" / "nl" / "nouns.paradigm.yaml").write_text(NL_TESTS, encoding="utf-8")


def free_port() -> int:
    with socket.socket() as sock:
        sock.bind(("127.0.0.1", 0))
        return sock.getsockname()[1]


def wait_for_server(url: str, timeout: float = 30.0) -> None:
    deadline = time.monotonic() + timeout
    while time.monotonic() < deadline:
        try:
            urllib.request.urlopen(url, timeout=2)
            return
        except OSError:
            time.sleep(0.3)
    raise RuntimeError(f"web UI did not start at {url}")


def make_driver(browser: str) -> webdriver.Remote:
    if browser == "chrome":
        options = webdriver.ChromeOptions()
        options.add_argument("--headless=new")
        driver = webdriver.Chrome(options=options)
    else:
        options = webdriver.EdgeOptions()
        options.add_argument("--headless=new")
        driver = webdriver.Edge(options=options)
    driver.set_window_size(1000, 720)
    return driver


def shot(driver: webdriver.Remote, name: str) -> None:
    # Size the viewport (not the window, which includes the browser frame) to the
    # page, so the whole page is captured without a scrollbar.
    driver.set_window_size(1000, 420)
    frame = driver.execute_script("return window.outerHeight - window.innerHeight")
    height = driver.execute_script("return document.documentElement.scrollHeight")
    driver.set_window_size(1000, min(max(420, height + frame + 16), 3000))
    path = OUT_DIR / name
    driver.save_screenshot(str(path))
    print(f"saved {path.relative_to(REPO)}")


def capture(base: str, driver: webdriver.Remote) -> None:
    wait = WebDriverWait(driver, 15)

    driver.get(base + "/")
    shot(driver, "01-index.png")

    driver.get(base + "/nl/category/nouns")
    shot(driver, "02-category-before.png")

    driver.get(base + "/nl/category/nouns/new-rule")
    driver.find_element(By.NAME, "feature_key").send_keys("number=dual")
    driver.find_element(By.NAME, "suffix").send_keys("en")
    driver.find_element(By.CSS_SELECTOR, "button[type=submit]").click()
    wait.until(ec.presence_of_element_located((By.CLASS_NAME, "error")))
    shot(driver, "03-new-rule-error.png")

    driver.get(base + "/nl/category/nouns/new-rule")
    driver.find_element(By.NAME, "feature_key").send_keys("number=plural")
    driver.find_element(By.NAME, "suffix").send_keys("en")
    shot(driver, "04-new-rule-form.png")
    driver.find_element(By.CSS_SELECTOR, "button[type=submit]").click()
    wait.until(ec.url_to_be(base + "/nl/category/nouns"))
    shot(driver, "05-category-after.png")

    for lemma, name in (("boek", "06-try-it-regular.png"), ("kind", "07-try-it-exception.png")):
        driver.get(base + "/nl/category/nouns/try")
        driver.find_element(By.NAME, "lemma").send_keys(lemma)
        Select(driver.find_element(By.NAME, "number")).select_by_value("plural")
        driver.find_element(By.CSS_SELECTOR, "button[type=submit]").click()
        wait.until(ec.presence_of_element_located((By.CSS_SELECTOR, "#result p")))
        shot(driver, name)

    driver.get(base + "/nl/tests")
    shot(driver, "08-tests.png")

    # A two-dimension language from the repository's own rules: Russian case x number.
    driver.get(base + "/ru/category/nouns/try")
    driver.find_element(By.NAME, "lemma").send_keys("школа")
    Select(driver.find_element(By.NAME, "case")).select_by_value("genitive")
    Select(driver.find_element(By.NAME, "number")).select_by_value("plural")
    driver.find_element(By.CSS_SELECTOR, "button[type=submit]").click()
    wait.until(ec.presence_of_element_located((By.CSS_SELECTOR, "#result p")))
    shot(driver, "09-try-it-russian.png")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--browser", choices=("edge", "chrome"), default="edge")
    args = parser.parse_args()

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    # ignore_cleanup_errors: on Windows the server may still hold the directory open.
    with tempfile.TemporaryDirectory(
        prefix="lingua-rules-shots-", ignore_cleanup_errors=True
    ) as tmp:
        workspace = Path(tmp)
        build_workspace(workspace)
        port = free_port()
        server = subprocess.Popen(
            [sys.executable, "-m", "lingua_rules.cli.main", "serve", "--port", str(port),
             "--rules-dir", "rules", "--tests-dir", "tests"],
            cwd=workspace,
        )
        base = f"http://127.0.0.1:{port}"
        try:
            wait_for_server(base + "/")
            driver = make_driver(args.browser)
            try:
                capture(base, driver)
            finally:
                driver.quit()
        finally:
            server.terminate()
            server.wait(timeout=10)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
