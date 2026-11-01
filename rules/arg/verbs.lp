% rules/arg/verbs.lp
% Aragonese verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389975: Gramatica Basica de l'Aragonés (texto provisional) (2017), pages 257, 258, 263, 264, 265, 269, 271, 272, 279, 280, 281, 282, 283, 284, 287, 288, 289, 290, 291, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   modelo_do_verbo_cayer        cayer — grammar: "Modelo d’o verbo cayer"
%   modelo_do_verbo_chacer       chacer — grammar: "Modelo d’o verbo chacer"
%   modelo_do_verbo_creyer       creyer — grammar: "Modelo d’o verbo creyer"
%   modelo_do_verbo_fatiar       fatiar — grammar: "Modelo d’o verbo fatiar"
%   modelo_do_verbo_regular_partir partir — grammar: "Modelo d’o verbo regular partir"
%   modelo_do_verbo_regular_temer temer — grammar: "Modelo d’o verbo regular temer"
%   modelo_do_verbo_tener        tener — grammar: "Modelo d’o verbo tener"
%   modelo_do_verbo_venir        venir — grammar: "Modelo d’o verbo venir"
%   modelo_do_verbo_valer        valer — grammar: "Modelo d’o verbo valer"
%   modelo_do_verbo_sentir       sentir — grammar: "Modelo d’o verbo sentir"
%   modelo_do_verbo_moler        moler — grammar: "Modelo d’o verbo moler"
%   modelo_do_verbo_adormir      adormir — grammar: "Modelo d’o verbo adormir"
%   modelo_do_verbo_servir       servir — grammar: "Modelo d’o verbo servir"
% Irregular (listed in data/verbs.exceptions.tsv): caber, deber, decir, estar, fer, freyir, fuyir, haber, ir, planyer, poder, poner ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
