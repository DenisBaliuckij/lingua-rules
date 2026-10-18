% rules/tea/verbs.lp
% Temiar verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15931: Kuuy Tʹmɛɛr: A Grammar of Kelantan Temiar (2025), pages 90, 91, 92, 93, 103
%   doc 386952: A New Outline of Temiar Grammar: Part One (2018), pages 29, 33
%   doc 388916: An Outline of Temiar Grammar (1976), pages 36, 37, 59
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ciib_type                    ciib
%   monosyllabic_verbs           mɔɔj — grammar: "monosyllabic verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
