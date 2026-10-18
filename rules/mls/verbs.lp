% rules/mls/verbs.lp
% Masalit verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23819: A Masalit Grammar: with notes on other languages of Darfur and Wadai (1989), pages 23, 24, 26
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ig_an_type                   ig-an
%   ti_basic_sense_future_time   goosin — grammar: "-ti (basic sense: future time)"
% Irregular (listed in data/verbs.exceptions.tsv): ay-a, iy-ey
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
