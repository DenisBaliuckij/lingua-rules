% rules/wrg/nouns.lp
% Warrongo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8223: A Grammar of Warrongo (2011), pages 199, 202, 290, 291, 295, 384, 386
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vowel_final_human_proper_nouns_and_kin_n gaya — grammar: "vowel-final human proper nouns and kin nouns"
%   vowel_final_human_proper_nouns_and_kin_n_2 gaya-na — grammar: "vowel-final human proper nouns and kin nouns"
%   vowel_final_human_proper_nouns gonira — grammar: "vowel-final human proper nouns"
% Irregular (listed in data/nouns.exceptions.tsv): abirrhil, gami-nyjarr, hilanggirr, jalbar, mondor, ngamor, rohiyirr, wonyorr, yaarr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
