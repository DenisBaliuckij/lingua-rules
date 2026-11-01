% rules/wmw/verbs.lp
% Mwani verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8102: Mwani Grammatical Sketch (Gramática de Kimwani) (2010), pages 11, 12, 13, 14, 17, 20, 21, 24, 28, 29, 37, 41, 58, 72
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kufisa_type                  kufisa, kufuláta
%   kurya_type                   kurya
%   rya_type                     rya
%   fisa_type                    fisa
%   kwasa_type                   kwása, kwíjiwa
%   kukaribisha_type             kukaribisha
%   kufulata_type                kufulata
%   kuka_type                    kúka
%   fulata_type                  fulata
%   kufuula_type                 kufuula
%   sa_type                      sa
%   karibisha_type               karibisha
%   karibisha_type_2             karibísha
%   kwasa_type_2                 kwasa
%   kwijiwa_type                 kwijiwa
%   simuka_type                  simuka
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
