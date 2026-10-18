% rules/ndo/verbs.lp
% Oshindonga (Ndonga) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296280: A Beginner's Guide to Oshindonga (2004), pages 15
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   common_stative_verbs         hole, na — grammar: "Common Stative Verbs"
%   common_active_verbs          ilongo, longo, yi — grammar: "Common Active Verbs"
%   common_active_verbs_2        kotha, tala — grammar: "Common Active Verbs"
%   common_active_verbs_3        li — grammar: "Common Active Verbs"
%   common_active_verbs_4        nu — grammar: "Common Active Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
