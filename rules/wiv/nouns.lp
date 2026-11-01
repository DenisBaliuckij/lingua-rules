% rules/wiv/nouns.lp
% Vitu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388300: Vitu Grammar Sketch (2006), pages 25, 26, 31, 64, 149
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   consonant_final_inalienable_nouns banit — grammar: "consonant-final inalienable nouns"
%   vowel_final_inalienable_nouns go — grammar: "vowel-final inalienable nouns"
%   consonant_final_inalienable_nouns_2 hanunuk, tutur — grammar: "consonant-final inalienable nouns"
%   vowel_final_inalienable_nouns_2 kabe — grammar: "vowel-final inalienable nouns"
%   consonant_final_inalienable_nouns_3 lohor — grammar: "consonant-final inalienable nouns"
%   vowel_final_inalienable_nouns_3 talinga — grammar: "vowel-final inalienable nouns"
% Irregular (listed in data/nouns.exceptions.tsv): tama, titina
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
