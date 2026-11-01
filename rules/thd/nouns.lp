% rules/thd/nouns.lp
% Kuuk Thaayorre nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389363: A Grammar of Kuuk Thaayorre (2006), pages 119, 168, 170, 172, 174, 175, 234, 235, 241, 333, 371, 381
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   paanth_type                  paanth
%   declension_3                 pam, ngat — grammar: "Declension 3"
%   thok_type                    thok
%   declension_1                 mong, ngotn — grammar: "Declension 1"
%   declension_2                 ranth — grammar: "Declension 2"
%   declension_2_2               yak — grammar: "Declension 2"
%   declension_3_2               kuuk — grammar: "Declension 3"
%   declension_3_3               ngok — grammar: "Declension 3"
%   second_declension_nomina     kaal — grammar: "second declension nomina"
%   second_declension_nomina_2   kam — grammar: "second declension nomina"
%   second_declension_nomina_3   kiin — grammar: "second declension nomina"
%   second_declension_nomina_4   koow — grammar: "second declension nomina"
%   third_declension_nomina      kun — grammar: "third declension nomina"
%   second_declension_nomina_5   kunk — grammar: "second declension nomina"
%   second_declension_nomina_6   meer — grammar: "second declension nomina"
%   second_declension_nomina_7   min — grammar: "second declension nomina"
%   second_declension_nomina_8   minc — grammar: "second declension nomina"
%   third_declension_nomina_2    minh — grammar: "third declension nomina"
%   second_declension_nomina_9   ngeengk — grammar: "second declension nomina"
%   second_declension_nomina_10  nhan — grammar: "second declension nomina"
%   second_declension_nomina_11  patp — grammar: "second declension nomina"
%   second_declension_nomina_12  peep — grammar: "second declension nomina"
%   third_declension_nomina_3    pinc — grammar: "third declension nomina"
%   second_declension_nomina_13  pork — grammar: "second declension nomina"
%   second_declension_nomina_14  pot — grammar: "second declension nomina"
%   third_declension_nomina_4    puun — grammar: "third declension nomina"
%   third_declension_nomina_5    puuy — grammar: "third declension nomina"
%   second_declension_nomina_15  raak — grammar: "second declension nomina"
%   second_declension_nomina_16  ruuc — grammar: "second declension nomina"
%   second_declension_nomina_17  thomp — grammar: "second declension nomina"
%   second_declension_nomina_18  waal — grammar: "second declension nomina"
%   second_declension_nomina_19  yuk — grammar: "second declension nomina"
% Irregular (listed in data/nouns.exceptions.tsv): kumun, kuta, ngumpurr, thamr, yencr
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
