% rules/blc/verbs.lp
% Nuxalk verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8719: Bella Coola Paradigms (1969), pages 7
%   doc 8724: The Nuxalk Language: Lexicon, Narratives, Grammar (1984), pages 433, 443
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   sub_paradigm_1               apswa — grammar: "Sub-paradigm 1"
%   sub_paradigm_3               ksnmak — grammar: "Sub-paradigm 3"
%   sub_paradigm_2               plikm — grammar: "Sub-paradigm 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
