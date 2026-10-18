% rules/sga/nouns.lp
% Old Irish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 74744: Sengoidelc: Old Irish for Beginners (2006), pages 109, 110, 193, 194, 196, 207, 213, 281, 287, 303, 304, 306, 368, 397
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   millea_type                  millea
%   scriba_type                  scriba
%   ressu_type                   ressu
%   ar_messur_type               ar-messur
%   leu_type                     leu
%   masculine_i_stems            cnaim — grammar: "masculine i-stems"
%   do_corar_type                do-corar
%   neuter_i_stems               muir — grammar: "neuter i-stems"
%   neutral_n_stem_declension    ainm — grammar: "neutral n-stem declension"
%   neutral_n_stem_declension_2  ceimm — grammar: "neutral n-stem declension"
%   feminine_i_stems             suil — grammar: "feminine i-stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
