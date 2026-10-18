% rules/hit/adjectives.lp
% Hittite adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8741: A Comparative Grammar of the Hittite Language, Volume I (1951), pages 73, 112, 138, 153, 169, 182
%   doc 389902: A Grammar of the Hittite Language: Part 1: Reference Grammar (2008), pages 103, 106, 110, 111, 114, 117, 118, 125, 131, 139, 144, 145, 147, 149, 212, 219, 225, 229, 233, 238, 241, 242, 244, 245, 247, 250, 253, 254
%   doc 389903: Hittite Grammar (2008), pages 26, 27, 30, 33, 35, 50, 51, 52, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 70, 71, 72, 74, 76, 77, 78
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   salli_type                   šalli
%   idalus_type                  idāluš
%   assus_type                   āššuš
%   nt_stem_nouns_and_adjectives ḫūmant — grammar: "nt-Stem Nouns and Adjectives"
%   karuili_type                 karūili
%   suppi_type                   šuppi
%   a_stem_adjectives            alwanzena, arawa — grammar: "a-stem adjectives"
%   nt_stem_nouns_and_adjectives_2 appant — grammar: "nt-Stem Nouns and Adjectives"
%   pankus_type                  pankuš
%   parkui_type                  parkui
%   parkus_type                  parkuš
%   r_stem_adjectives            šakuwaššar, kallar — grammar: "r-stem adjectives"
%   dankui_type                  dankui, ḫarki
%   warhui_type                  warḫui
%   mekki_type                   mekki
%   a_stem_adjectives_2          ḫantezziya — grammar: "a-stem adjectives"
%   a_stem_adjectives_3          appezziya — grammar: "a-stem adjectives"
%   nt_stem_nouns_and_adjectives_3 ḫuišwant — grammar: "nt-Stem Nouns and Adjectives"
%   a_stem_adjectives_4          annalla — grammar: "a-stem adjectives"
%   a_stem_adjectives_5          kunnaz — grammar: "a-stem adjectives"
%   a_stem_adjectives_6          araḫzena — grammar: "a-stem adjectives"
%   huisu_type                   ḫuišu
%   a_stem_adjectives_7          dannadduš — grammar: "a-stem adjectives"
%   palhi_type                   palḫi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
