% rules/hyw/verbs.lp
% Western Armenian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 924611: A Textbook of Modern Western Armenian (1977), pages 18, 44, 45, 46, 162, 168, 260
%   doc 924613: Western Armenian for the English-speaking World: A Contrastive Approach (2012), pages 32, 92, 95, 116, 135, 136, 158, 180, 185, 218, 222, 223, 265, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 367, 368, 369, 370
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_type                   կարդալ
%   class_type_2                 վազել
%   class_type_3                 խօսիլ
%   class_type_4                 խօսել
%   class_type_5                 գրել
%   verbs_in                     սիրել — grammar: "verbs in -ել"
%   class_type_6                 կարենալ
%   class_type_7                 երգել
%   class_type_8                 խաղալ
%   class_type_9                 ունենալ
% Irregular (listed in data/verbs.exceptions.tsv): ԵՄ and ԸԼԼԱԼ, առնեի, առնել, բանալ, բանել, բերել, գալ, գառնալ, գիտնալ, գտնել, գտնելէ, դառնալ ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
