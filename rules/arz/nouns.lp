% rules/arz/nouns.lp
% Egyptian Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 823957: A Reference Grammar of Egyptian Arabic (1979), pages 16, 21, 22, 37, 38, 116, 151, 270, 272, 273, 275, 276, 306, 318, 319
%   doc 839257: Comparative Morphology of Standard and Egyptian Arabic (2000), pages 82, 91, 92, 214
%   doc 853685: A Comprehensive Study of Egyptian Arabic. Volume Three: A Reference Grammar of Egyptian Ar (1979), pages 19, 20, 21, 30, 31, 36, 145, 184, 198, 199, 205, 206, 207, 304, 308
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   active_participles_which_denote_a_semant murabbi — grammar: "Active participles which denote a semantic extension (typically nominal)"
%   nouns_of_single_occurrence   akla — grammar: "nouns of single occurrence"
%   diraasa_type                 diraasa
%   active_participles_which_denote_a_semant_2 ?adya — grammar: "Active participles which denote a semantic extension (typically nominal)"
%   daac_type                    daaC
%   fard_type                    fard
%   hiwaar_type                  hiwaar
%   infigaar_type                infigaar
%   intiqaad_type                intiqaad
%   iqraar_type                  iqraar
%   kitaaba_type                 kitaaba
%   kltaaba_type                 kltaaba
%   muharrik_type                muharrik
%   mulabla_type                 mulabla
%   muqaatila_type               muqaatila
%   active_participles_which_denote_a_semant_3 murabbiyya — grammar: "Active participles which denote a semantic extension (typically nominal)"
%   musakkin_type                musakkin
%   muxaddir_type                muxaddir
%   raawi_type                   raawi
%   nouns_of_single_occurrence_2 ramya — grammar: "nouns of single occurrence"
%   ta_type                      ta
%   tai_iwwur_type               taI?iwwur
%   taagir_type                  taagir
%   verbal_nouns_of_measure_ii_triliterals tafbiir — grammar: "verbal nouns of Measure II triliterals"
%   verbal_nouns_of_measure_ii_triliterals_2 tafriif — grammar: "verbal nouns of Measure II triliterals"
%   tamanni_type                 tamanni
%   tanaaqud_type                tanaaqud
%   targama_type                 targama
%   tasriif_type                 tasriif
%   verbal_nouns_of_measure_ii_triliterals_3 tasriih — grammar: "verbal nouns of Measure II triliterals"
%   zaa_ir_type                  zaa?ir
% Irregular (listed in data/nouns.exceptions.tsv): daaTi, hadsa, naa?ib, sa?ya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
