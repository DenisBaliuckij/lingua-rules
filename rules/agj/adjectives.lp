% rules/agj/adjectives.lp
% Argobba adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388558: A Preliminary Description of Argobba (1959), pages 6, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
%   doc 848326: Outlines of Argobba Pedagogical Grammar (2025), pages 17
%   doc 853844: Argobba Grammar (n.d.), pages 9
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   amud_type                    amud
%   laam_type                    läħam
%   rai_type                     räħi
%   tek_type                     t’ek
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
