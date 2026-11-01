% rules/arz/verbs.lp
% Egyptian Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 823957: A Reference Grammar of Egyptian Arabic (1979), pages 16, 21, 22, 37, 38, 116, 151, 270, 272, 273, 275, 276, 306, 318, 319
%   doc 839257: Comparative Morphology of Standard and Egyptian Arabic (2000), pages 82, 91, 92, 214
%   doc 853685: A Comprehensive Study of Egyptian Arabic. Volume Three: A Reference Grammar of Egyptian Ar (1979), pages 19, 20, 21, 30, 31, 36, 145, 184, 198, 199, 205, 206, 207, 304, 308
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   azaal_type                   azaal
%   bana_type                    bana
%   daxal_type                   daxal
%   istagaab_type                istagaab
%   passive_participles_which_denote_a_seman muwazzaf, musaddas — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   passive_participles_which_denote_a_seman_2 masguun — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   katab_type                   katab
%   naam_type                    naam
%   passive_participles_which_denote_the_bas madfi, mitrabbi — grammar: "Passive Participles Which Denote the Basic Designation (Typically Adjectival)"
%   mistanni_type                mistanni
%   participles_with_the_basic_designation_t mu?addab — grammar: "participles with the basic designation (typically adjectival)"
%   passive_participles_which_denote_a_seman_3 muwazzafa — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   yuuuk_type                   yuuuk
%   active_participle            ktb — grammar: "active participle"
%   passive_participles_which_denote_a_seman_4 ma?miur — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   maa_i_type                   maa?i
%   passive_participles_which_denote_a_seman_5 mafguun — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   passive_participles_which_denote_a_seman_6 magmuuTa — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   passive_participles_which_denote_a_seman_7 mahsuul — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   passive_participles_which_denote_a_seman_8 masguuna — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   active_participles_which_denote_the_basi mitfaadi — grammar: "Active Participles which denote the basic designation (= adjectival)"
%   passive_participles_which_denote_a_seman_9 mudarrag — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   passive_participles_which_denote_a_seman_10 murakkab — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   passive_participles_which_denote_a_seman_11 musallas — grammar: "Passive Participles Which Denote a Semantic Extension (Typically Nominal)"
%   active_participle_2          mzy — grammar: "active participle"
%   active_participle_3          nmy — grammar: "active participle"
%   wa_fii_type                  wa?fii
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
