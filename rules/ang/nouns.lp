% rules/ang/nouns.lp
% Old English nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388494: A Grammar of Old English: Volume 1: Phonology (2011), pages 391, 395, 419, 439, 467, 504, 529, 591, 657, 662, 679, 691, 697
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   cneow_type                   cneow
%   heavy_fem_i_stems            dwd — grammar: "heavy fem. i-stems"
%   nd_stem_nouns                hettend — grammar: "nd-stem nouns"
%   light_stems                  spere — grammar: "light stems"
%   a_stem_nouns                 stan — grammar: "a-stem nouns"
%   straw_type                   straw
%   an_declension_nouns_with_stems_ending_in twbo, wba — grammar: "an-declension nouns with stems ending in a vowel or diphthong"
%   a_stem_nouns_2               word — grammar: "a-stem nouns"
%   eow_type                     þeow
%   ja_stems_light               cynn — grammar: "ja-stems (light)"
%   ja_stems_heavy               end — grammar: "ja-stems (heavy)"
%   ja_stems_heavy_2             wcte — grammar: "ja-stems (heavy)"
%   nd_stem_nouns_2              frbond — grammar: "nd-stem nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
