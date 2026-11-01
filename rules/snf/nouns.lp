% rules/snf/nouns.lp
% Noon nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 141: La grammaire du noon (2017), pages 82, 83, 89
%   doc 794190: 25 Leçons Élémentaires pour Apprendre la Langue Noon (2000), pages 24, 27
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   eewun_type                   eewun
%   kemenkimun_type              këmënkimun
%   paire_de_classes_k_t         k–anu — grammar: "paire de classes k/t"
%   paire_de_classes_k_t_2       k–etëk — grammar: "paire de classes k/t"
%   paire_de_classes_k_t_3       k–owu — grammar: "paire de classes k/t"
%   paire_de_classes_nj_t        nj–okon — grammar: "paire de classes nj/t"
%   paamun_type                  paamun
%   paire_de_classes_p_t         p–úú — grammar: "paire de classes p/t"
%   yaakmun_type                 yaakmun
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
