% rules/vav/nouns.lp
% Varli nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388713: Varli Phonology and Grammar Sketches (2012), pages 51, 52, 54, 66, 70, 71, 74, 75
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_iii_consonsnt_final    bəl — grammar: "Class III: Consonsnt final"
%   class_ii_consonant_final     cĩc, saɭ — grammar: "Class II: Consonant final"
%   class_i_consonant_final      gaj, ɾat — grammar: "Class I: Consonant final"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
