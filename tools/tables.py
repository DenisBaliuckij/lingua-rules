"""Helpers for the generators: write the dataset tables of rules/<lang>/data/.

Rule files hold the logic; these tables hold the lists (irregular forms, class
membership, class properties). See src/lingua_rules/engine/datasets.py.
"""

from pathlib import Path


def write_table(path: Path, header: list[str], rows: list[list[str]]) -> None:
    """A UTF-8, LF, tab-separated table; trailing empty cells are left out."""
    path.parent.mkdir(parents=True, exist_ok=True)
    lines = ["\t".join(header)] + ["\t".join(row).rstrip("\t") for row in rows]
    path.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")


def members(table: dict[str, list[str]]) -> list[tuple[str, str]]:
    """{class: [lemma, ...]} -> [(lemma, class), ...] in table order."""
    return [(lemma, cls) for cls, lemmas in table.items() for lemma in lemmas]


def lexicon(columns: list[str], values: dict[str, dict[str, str]]) -> list[list[str]]:
    """Rows of a lemma-keyed table: values[column][lemma]; lemmas in first-seen order."""
    order: list[str] = []
    for column in columns:
        for lemma in values.get(column, {}):
            if lemma not in order:
                order.append(lemma)
    return [[lemma] + [values.get(c, {}).get(lemma, "") for c in columns] for lemma in order]
