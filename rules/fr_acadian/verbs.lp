% rules/fr_acadian/verbs.lp
% French (Acadian dialect) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22711: Grammaire comparée des français d’Acadie et de Louisiane (GraCoFAL) Avec un aperçu sur Ter (2018), pages 949, 955, 959, 961, 968, 970
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   sassir_type                  s’assir
%   ecrire_type                  écrire
% Irregular (listed in data/verbs.exceptions.tsv): faire, il faut, mourir, venir, voir, vouloir, être
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
