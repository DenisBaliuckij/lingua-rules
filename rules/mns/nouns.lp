% rules/mns/nouns.lp
% Vogul nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 75031: Vogul (2001), pages 25, 26, 29, 30, 32, 33, 34, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54, 55
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   pora_type                    pōra
%   xap_type                     XāP
%   tump_type                    tump
%   consonant_stem               āmp — grammar: "consonant stem"
%   vowel_stem_in_i              āwi — grammar: "vowel stem in -i"
%   ori_type                     χoriγ
%   mojt_type                    mōjt
%   ne_type                      nē
%   ani_type                     āni
%   swi_type                     Swi
%   xap_type_2                   XäP
%   ai_type                      āγi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
