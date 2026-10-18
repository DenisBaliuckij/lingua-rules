% rules/kio/nouns.lp
% Kiowa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389637: A Grammar of Kiowa (1980), pages 127, 136, 146, 147, 149, 216, 235
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   kinship_terms                k'i — grammar: "kinship terms"
%   kinship_terms_2              t^a — grammar: "kinship terms"
%   co_type                      co
%   kinship_terms_3              kom — grammar: "kinship terms"
%   tol_type                     tol
%   class_iii_nouns              alo, t^ot'olo — grammar: "Class III nouns"
%   class_iii_nouns_2            k'Sn — grammar: "Class III nouns"
%   kinship_terms_4              i — grammar: "kinship terms"
%   kinship_terms_5              i^t^a — grammar: "kinship terms"
%   kinship_terms_6              p'i — grammar: "kinship terms"
%   kinship_terms_7              pa:bi — grammar: "kinship terms"
%   class_ii                     ze:-ba — grammar: "class II"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
