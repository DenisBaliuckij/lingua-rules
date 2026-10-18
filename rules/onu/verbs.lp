% rules/onu/verbs.lp
% Unua verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 895461: A Grammar of Unua (2015), pages 54, 64, 134, 152, 157, 161, 244
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   irrealis                     gir — grammar: "Irrealis"
%   relative_paradigm            ke-i — grammar: "Relative paradigm"
%   irrealis_2                   gom — grammar: "Irrealis"
%   irrealis_3                   re — grammar: "Irrealis"
%   irrealis_4                   tu — grammar: "Irrealis"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
