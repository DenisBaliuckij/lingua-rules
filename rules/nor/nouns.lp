% rules/nor/nouns.lp
% Norwegian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 363: A reference guide to the syntax of North American Norwegian (2025), pages 92
%   doc 387259: Lær deg norsk! Corso di lingua norvegese Livelli A1-B1 del Quadro Comune Europeo di Riferi (2015), pages 50, 51, 53, 54, 142, 206
%   doc 389658: Norwegian (2002), pages 15, 17, 22
%   doc 942422: Norwegian Language Teaching Materials Development Project: Final Report (1967), pages 279, 280, 283
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   hunkjnn_femminile            bok — grammar: "Hunkjønn Femminile"
%   hankjonn_maschile            butikk, kopp, stol, telefon — grammar: "Hankjonn Maschile"
%   bat_type                     båt
%   hunkjnn_femminile_2          dame, jente, kake — grammar: "Hunkjønn Femminile"
%   intetkjonn_neutro            eple — grammar: "Intetkjonn Neutro"
%   intetkjonn_neutro_2          kjoleskap, kurs, skap, tilbud — grammar: "Intetkjonn Neutro"
%   intetkjonn_neutro_3          pauserom — grammar: "Intetkjonn Neutro"
%   intetkjonn_neutro_4          språk — grammar: "Intetkjonn Neutro"
%   intetkjonn_neutro_5          vindu — grammar: "Intetkjonn Neutro"
%   hunkjnn_femminile_3          lampe — grammar: "Hunkjønn Femminile"
%   tre_type                     tre
% Irregular (listed in data/nouns.exceptions.tsv): barn, mann
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
