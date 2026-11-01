% rules/kua/verbs.lp
% Kwanyama verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38531: Hai ti! A Beginner’s Guide to Oshikwanyama (2004), pages 15
%   doc 91768: A Beginner’s Guide to Oshikwanyama (n.d.), pages 12
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   common_stative_verbs         hole, na — grammar: "Common Stative Verbs"
%   common_active_verbs          i, li — grammar: "Common Active Verbs"
%   common_active_verbs_2        kofa — grammar: "Common Active Verbs"
%   common_active_verbs_3        lilongo, longo, tale — grammar: "Common Active Verbs"
%   common_active_verbs_4        nu — grammar: "Common Active Verbs"
%   common_stative_verbs_2       shi — grammar: "Common Stative Verbs"
%   common_stative_verbs_3       udite — grammar: "Common Stative Verbs"
%   common_stative_verbs_4       wete — grammar: "Common Stative Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
