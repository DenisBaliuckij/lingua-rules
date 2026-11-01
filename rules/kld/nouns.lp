% rules/kld/nouns.lp
% Gamilaraay nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289414: Yaluu: A Recovery Grammar of Yuwaalaraay and Gamilaraay: A description of two New South Wa (2017), pages 58, 112, 159, 160, 162, 173, 247, 252, 283, 296
%   doc 289415: A grammar of Yuwaalaraay (1980), pages 46, 58, 74
%   doc 289416: A grammar of Yuwaalaraay and Gamilaraay: a description of two New South Wales languages ba (2014), pages 62, 65, 131, 170, 171, 286
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   standard_nominal_declension  gilaa — grammar: "Standard nominal declension"
%   personal_declension          ngambaa — grammar: "Personal declension"
%   standard_nominals            yinarr — grammar: "standard nominals"
%   standard_nominals_2          bagay — grammar: "standard nominals"
%   standard_nominals_3          barran — grammar: "standard nominals"
%   standard_nominals_4          galah — grammar: "standard nominals"
%   standard_nominals_5          giniy — grammar: "standard nominals"
%   standard_nominals_6          mil — grammar: "standard nominals"
%   standard_nominals_7          wii — grammar: "standard nominals"
%   yr_locationals_in_sim        bani — grammar: "YR locationals in Sim"
%   yr_locationals_in_sim_2      bawa — grammar: "YR locationals in Sim"
%   yr_locationals_in_sim_3      bidjun, nirrin — grammar: "YR locationals in Sim"
%   yr_locationals_in_sim_4      gaburran — grammar: "YR locationals in Sim"
%   yr_locationals_in_sim_5      gandaarr — grammar: "YR locationals in Sim"
%   yr_locationals_in_sim_6      ganhagay — grammar: "YR locationals in Sim"
%   ma_a_y_type                  ma:ŋa:y
%   yr_locationals_in_sim_7      mudhuu — grammar: "YR locationals in Sim"
%   yr_locationals_in_sim_8      ngaarrigili, ngagili, wagi — grammar: "YR locationals in Sim"
%   wanda_type                   wanda
%   ayn_type                     ŋayn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
