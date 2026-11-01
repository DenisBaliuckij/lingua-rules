% rules/yuz/nouns.lp
% Yurakaré nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 100549: A grammar of Yurakaré (2006), pages 58, 130, 131, 158, 160, 205, 206
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   nouns_with_stress_avoiding_syllables chitchi — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_2 chitti — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_3 chobbe — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_4 dalla — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_5 dojjo — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_6 dullu — grammar: "Nouns with stress-avoiding syllables"
%   dette_type                   détte
%   nouns_with_stress_avoiding_syllables_7 korre — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_8 kummë — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_9 meyye — grammar: "Nouns with stress-avoiding syllables"
%   pa_type                      pa
%   pojore_type                  pojore
%   nouns_with_stress_avoiding_syllables_10 pëllë — grammar: "Nouns with stress-avoiding syllables"
%   pepe_type                    pëpë
%   nouns_with_stress_avoiding_syllables_11 samma — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_12 sibbë — grammar: "Nouns with stress-avoiding syllables"
%   nouns_with_stress_avoiding_syllables_13 tibba — grammar: "Nouns with stress-avoiding syllables"
%   tomete_type                  tomete
%   too_type                     too
%   nouns_with_stress_avoiding_syllables_14 yarru — grammar: "Nouns with stress-avoiding syllables"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
