% rules/sri/nouns.lp
% Siriano nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289918: The Phonology and Morphology of Siriano: A Grammar Sketch (2021), pages 44, 45, 46, 47, 48, 52, 53, 54, 57
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inherently_plural_inanimate_nouns awi — grammar: "inherently plural inanimate nouns"
%   bia_type                     bia
%   low_level_individual_animates_type_i boRe — grammar: "Low Level Individual Animates Type I"
%   inherently_plural_inanimate_nouns_2 boho — grammar: "inherently plural inanimate nouns"
%   low_level_individual_animates_type_i_2 buha — grammar: "Low Level Individual Animates Type I"
%   buhi_type                    buhi
%   buidi_type                   buidi
%   low_level_individual_animates_type_i_3 buui — grammar: "Low Level Individual Animates Type I"
%   inherently_singular_nouns    dia — grammar: "inherently singular nouns"
%   high_level_individual_animates dijaee — grammar: "High Level Individual Animates"
%   inherently_plural_inanimate_nouns_3 dita — grammar: "inherently plural inanimate nouns"
%   inherently_singular_nouns_2  diu — grammar: "inherently singular nouns"
%   doka_type                    doka
%   doodi_type                   doódi
%   data_type                    dáta
%   low_level_individual_animates_type_i_4 mãhã — grammar: "Low Level Individual Animates Type I"
%   inherently_plural_inanimate_nouns_4 mãmãũ — grammar: "inherently plural inanimate nouns"
%   low_level_individual_animates_type_i_5 nãsĨ — grammar: "Low Level Individual Animates Type I"
%   low_level_individual_animates_type_i_6 sẽmẽ — grammar: "Low Level Individual Animates Type I"
%   tari_type                    taRi
%   low_level_individual_animates_type_i_7 waau — grammar: "Low Level Individual Animates Type I"
%   inherently_singular_nouns_3  wii — grammar: "inherently singular nouns"
%   low_level_individual_animates_type_i_8 wãtĨ — grammar: "Low Level Individual Animates Type I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
