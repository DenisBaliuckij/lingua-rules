% rules/cul/nouns.lp
% Kulina nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23874: Gramática da língua kulina : dialeto do igarapé do Anjo (1986), pages 17, 34, 38, 39, 44, 45, 46, 47, 48, 50, 53, 54, 57
%   doc 25185: A Grammar of Kulina (2014), pages 76, 156, 240
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   zepe_type                    zepe
%   kinship_terms                son — grammar: "kinship terms"
%   coridsa_type                 coridsa
%   huajara_type                 huajara
%   nocco_type                   nocco
%   poho_type                    poho
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
