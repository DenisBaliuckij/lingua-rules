% rules/lad/verbs.lp
% Ladino verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 99769: Esta es una prova por una gramatika ladina (n.d.), pages 10, 17, 29, 49, 50, 51, 52, 58, 59, 65, 71, 72, 77, 78, 79
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i                            avlar — grammar: "I"
%   iii                          bivir — grammar: "III"
%   ir_type                      ir
%   ii                           komer — grammar: "II"
%   kantar_type                  kantar
%   pueder_type                  pueder
%   azer_type                    azer
%   iii_2                        bivyer — grammar: "III"
%   ii_2                         komyer — grammar: "II"
%   venir_type                   venir
%   poner_type                   poner
%   salir_type                   salir
%   saver_type                   saver
%   traer_type                   traer
%   ver_type                     ver
%   kuzir_type                   kuzir
% Irregular (listed in data/verbs.exceptions.tsv): aver, empesar, estar, kerer, ser, tener
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
