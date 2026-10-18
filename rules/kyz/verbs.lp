% rules/kyz/verbs.lp
% Kayabi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388740: Aspectos da Língua Kayabi (1988), pages 28
%   doc 388741: Gramática Prática Com Exercícios da Língua Kayabi (1997), pages 49, 51, 74, 112, 136
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   des_a                        mara'ne, ro'y — grammar: "Des-A"
%   des_a_2                      pirakup — grammar: "Des-A"
%   des_a_3                      py'araypat — grammar: "Des-A"
%   des_a_4                      yman — grammar: "Des-A"
%   classe_3                     roo — grammar: "classe 3"
%   classe_2                     afukaì — grammar: "Classe 2"
%   classe_2_2                   apyaka — grammar: "Classe 2"
%   classe_2_3                   apyk — grammar: "Classe 2"
%   classe_2_4                   ata — grammar: "Classe 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
