% rules/frr/nouns.lp
% Sölrung North Frisian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289537: Karrharde Frisian grammar sketch (2025), pages 5, 17, 18, 45
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   god_type                     God
%   oblique_marked_kinship_terms al, memm, ōm — grammar: "Oblique-marked kinship terms"
%   oblique_marked_kinship_terms_2 tēte — grammar: "Oblique-marked kinship terms"
%   oblique_marked_kinship_terms_3 medder — grammar: "Oblique-marked kinship terms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
