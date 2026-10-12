"""Datasets: exceptions, fact tables and paradigm tables kept outside the rule files."""

from pathlib import Path

import pytest

from lingua_rules.engine.datasets import (
    DatasetError,
    dataset_key_dimensions,
    dataset_program,
    load_datasets,
    read_dataset,
)
from lingua_rules.engine.lint import lint_language
from lingua_rules.engine.runner import NoRuleMatchedError, RuleFileParseError, generate_form
from lingua_rules.engine.templates import DuplicateEntryError, append_rule


def _language(tmp_path: Path, rules: str, tables: dict[str, str]) -> Path:
    lang_dir = tmp_path / "xx"
    (lang_dir / "data").mkdir(parents=True)
    (lang_dir / "lang.yaml").write_text("name: Test\ncategories: [nouns]\n", encoding="utf-8")
    (lang_dir / "features.yaml").write_text(
        "dimensions:\n"
        "  case:\n    values: [nominative, genitive]\n"
        "  number:\n    values: [singular, plural]\n",
        encoding="utf-8",
    )
    (lang_dir / "nouns.lp").write_text(rules, encoding="utf-8")
    for name, text in tables.items():
        (lang_dir / "data" / name).write_text(text, encoding="utf-8")
    return tmp_path


CLASS_RULES = (
    'form(L, "case=nominative;number=plural", @suffix(L, "y")) :- '
    "input_lemma(L), noun_class(L, hard), not irregular(L).\n"
    'form(L, "case=nominative;number=plural", @suffix(L, "i")) :- '
    "input_lemma(L), noun_class(L, velar), not irregular(L).\n"
    'form(L, "case=genitive;number=singular", "ANIMATE") :- input_lemma(L), animate(L).\n'
)


def test_exceptions_table_becomes_irregular_and_form_facts(tmp_path):
    rules_dir = _language(
        tmp_path,
        'form(L, "case=nominative;number=plural", @suffix(L, "s")) :- '
        "input_lemma(L), not irregular(L).\n",
        {"nouns.exceptions.tsv": "lemma\tfeatures\tform\tsource\n"
                                 "# comment line\n"
                                 "child\tnumber=plural,case=nominative\tchildren\tdoc 12, p. 40\n"},
    )
    plural = {"case": "nominative", "number": "plural"}
    assert generate_form(rules_dir, "xx", "nouns", "child", plural) == "children"
    assert generate_form(rules_dir, "xx", "nouns", "cat", plural) == "cats"


def test_fact_table_columns_become_typed_predicates(tmp_path):
    rules_dir = _language(
        tmp_path,
        CLASS_RULES,
        {"nouns.lexicon.tsv": "lemma\tnoun_class\tanimate:flag\tnote\n"
                              "стол\thard\t\tfurniture\n"
                              "урок\tvelar\n"
                              "студент\thard\tyes\n"},
    )
    plural = {"case": "nominative", "number": "plural"}
    assert generate_form(rules_dir, "xx", "nouns", "стол", plural) == "столy"
    assert generate_form(rules_dir, "xx", "nouns", "урок", plural) == "урокi"
    assert generate_form(
        rules_dir, "xx", "nouns", "студент", {"case": "genitive", "number": "singular"}
    ) == "ANIMATE"
    with pytest.raises(NoRuleMatchedError):  # not in the lexicon: no class, no form
        generate_form(rules_dir, "xx", "nouns", "дом", plural)


def test_only_the_requested_lemmas_rows_are_loaded(tmp_path):
    rules_dir = _language(
        tmp_path, CLASS_RULES,
        {"nouns.lexicon.tsv": "lemma\tnoun_class\nстол\thard\nурок\tvelar\n",
         "nouns.classes.tsv": "class\tclass_gender\nhard\tmasculine\n"},
    )
    program = dataset_program(rules_dir, "xx", "nouns", "стол")
    assert 'noun_class("стол", hard).' in program
    assert "урок" not in program
    assert "class_gender(hard, masculine)." in program  # class-keyed: always loaded


def test_paradigm_table_with_the_class_paradigm_template(tmp_path):
    rules_dir = _language(tmp_path, "% nouns\n", {})
    append_rule(rules_dir, "xx", "nouns", "class-paradigm", class_predicate="noun_class")
    append_rule(rules_dir, "xx", "nouns", "paradigm-ending", class_name="a_stem",
                feature_key="number=singular;case=genitive", strip="1", ending="y")
    append_rule(rules_dir, "xx", "nouns", "paradigm-ending", class_name="a_stem",
                feature_key="case=nominative;number=singular", ending="")
    append_rule(rules_dir, "xx", "nouns", "lexicon-entry", lemma="lampa",
                predicate="noun_class", value="a_stem")

    assert generate_form(
        rules_dir, "xx", "nouns", "lampa", {"case": "genitive", "number": "singular"}
    ) == "lampy"
    assert generate_form(
        rules_dir, "xx", "nouns", "lampa", {"case": "nominative", "number": "singular"}
    ) == "lampa"
    assert lint_language(rules_dir, "xx") == []
    with pytest.raises(DuplicateEntryError):
        append_rule(rules_dir, "xx", "nouns", "paradigm-ending", class_name="a_stem",
                    feature_key="case=genitive;number=singular", strip="1", ending="i")


def test_lexicon_entry_adds_columns_and_fills_cells(tmp_path):
    rules_dir = _language(tmp_path, CLASS_RULES, {})
    append_rule(rules_dir, "xx", "nouns", "lexicon-entry", lemma="стол",
                predicate="noun_class", value="hard")
    append_rule(rules_dir, "xx", "nouns", "lexicon-entry", lemma="студент",
                predicate="noun_class", value="hard")
    path = append_rule(rules_dir, "xx", "nouns", "lexicon-entry", lemma="студент",
                       predicate="animate", value="yes", value_type="flag")
    assert path.read_text(encoding="utf-8") == (
        "lemma\tnoun_class\tanimate:flag\nстол\thard\nстудент\thard\tyes\n"
    )


def test_exception_override_refuses_a_contradicting_row(tmp_path):
    rules_dir = _language(tmp_path, "% nouns\n", {})
    kwargs = {"lemma": "child", "feature_key": "case=nominative;number=plural"}
    append_rule(rules_dir, "xx", "nouns", "exception-override", form="children", **kwargs)
    append_rule(rules_dir, "xx", "nouns", "exception-override", form="children", **kwargs)
    with pytest.raises(DuplicateEntryError):
        append_rule(rules_dir, "xx", "nouns", "exception-override", form="childs", **kwargs)
    rows = read_dataset(rules_dir / "xx" / "data" / "nouns.exceptions.tsv").rows
    assert len(rows) == 1


@pytest.mark.parametrize(
    "table, message",
    [
        ("lemma\tnoun_class\nстол\tHard\n", "is not a constant"),
        ("lemma\tnoun_class:colour\nстол\thard\n", "unknown type"),
        ("lemma\tanimate:flag\nстол\tmaybe\n", "is not a flag"),
        ("lemma\tform\nстол\thard\n", "reserved predicate"),
        ("lemma\tnoun_class\nстол\thard\textra\n", "cells but the header has"),
    ],
)
def test_malformed_tables_are_reported_with_file_and_line(tmp_path, table, message):
    rules_dir = _language(tmp_path, CLASS_RULES, {"nouns.lexicon.tsv": table})
    with pytest.raises(RuleFileParseError, match=message):
        generate_form(rules_dir, "xx", "nouns", "стол", {"case": "nominative", "number": "plural"})
    issues = [i.message for i in lint_language(rules_dir, "xx")]
    assert any(message in m for m in issues)


def test_lint_finds_unused_predicates_unknown_classes_and_bad_features(tmp_path):
    rules_dir = _language(
        tmp_path, CLASS_RULES,
        {"nouns.lexicon.tsv": "lemma\tnoun_class\tnoun_klass\nстол\thrd\thard\n",
         "nouns.exceptions.tsv": "lemma\tfeatures\tform\n"
                                 "дом\tcase=dative;number=plural\tдомам\n"
                                 "сын\tcase=nominative;number=plural\tсыны\n"
                                 "сын\tnumber=plural;case=nominative\tсыновья\n"},
    )
    messages = "\n".join(i.message for i in lint_language(rules_dir, "xx"))
    assert "no rule uses the predicate 'noun_klass'" in messages
    assert "noun_class values not used by any rule or table: hrd" in messages
    assert "unknown value 'dative'" in messages
    assert "line 3 gives 'сыны'" in messages


def test_try_it_dimensions_include_keys_listed_only_in_tables(tmp_path):
    rules_dir = _language(
        tmp_path, "% nouns\n",
        {"nouns.exceptions.tsv": "lemma\tfeatures\tform\nдом\tcase=genitive;number=plural\tдомов\n"},
    )
    assert dataset_key_dimensions(rules_dir, "xx", "nouns") == [{"case", "number"}]


def test_a_category_without_a_data_folder_has_no_datasets(tmp_path):
    rules_dir = _language(tmp_path, "% nouns\n", {})
    (rules_dir / "xx" / "data").rmdir()
    assert load_datasets(rules_dir, "xx", "nouns") == []
    assert dataset_program(rules_dir, "xx", "nouns", "x") == ""


def test_a_table_without_a_header_is_an_error(tmp_path):
    rules_dir = _language(tmp_path, "% nouns\n", {"nouns.lexicon.tsv": "# only a comment\n"})
    with pytest.raises(DatasetError, match="no header"):
        load_datasets(rules_dir, "xx", "nouns")
