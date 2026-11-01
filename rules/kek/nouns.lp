% rules/kek/nouns.lp
% Q'eqchi' nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41268: Q'eqchi' Grammar (2015), pages 50, 59, 60, 62, 64, 69, 70, 71, 72, 78, 79, 80, 139
%   doc 93679: Gramática descriptiva del idioma maya Q'eqchi' (2003), pages 41, 44, 45, 63, 64, 65, 66
%   doc 93681: Xtuslal Xchaq’rab’il li aatinob’aal Q’eqchi’ (Gramática Normativa) (2022), pages 27, 39, 61, 62, 65, 92
%   doc 389886: K’EQCHI GRAMMAR: An Introduction (2010), pages 20, 30, 31, 32, 33, 35, 36
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   sustantivo_prevocalico       uq'un — grammar: "Sustantivo Prevocálico"
%   xayaw_type                   xayaw
%   jolom_type                   jolom
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
