% rules/isl/nouns.lp
% Icelandic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388284: Icelandic (2011), pages 12, 14, 15, 18, 19, 21
%   doc 388287: Mimir Icelandic Grammar (n.d.), pages 1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 25, 26, 29, 30, 31, 32, 33, 34, 35, 36, 37
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   strong                       hestur — grammar: "Strong ι"
%   group_wm1                    afi, bakari — grammar: "Group WM1"
%   weak                         auga — grammar: "Weak"
%   strong_neuter_nouns          barn — grammar: "Strong Neuter Nouns"
%   strong_2                     borð — grammar: "Strong"
%   group_sf3                    bók — grammar: "Group SF3"
%   group_wm2                    bóndi — grammar: "Group WM2"
%   group_sf2                    gjöf — grammar: "Group SF2"
%   group_sm3                    hlutur — grammar: "Group SM3"
%   group_sf1                    kerling — grammar: "Group SF1"
%   group_sf1_2                  lifur — grammar: "Group SF1"
%   group_wf2                    lygi — grammar: "Group WF2"
%   group_wm2_2                  nemandi — grammar: "Group WM2"
%   strong_3                     nál — grammar: "Strong ι"
%   group_sm2                    smiður — grammar: "Group SM2"
%   group_sm1                    stóll — grammar: "Group SM1"
%   strong_neuter_nouns_2        sumar — grammar: "Strong Neuter Nouns"
%   weaki                        tunga — grammar: "Weaki"
%   group_sm2_2                  veggur — grammar: "Group SM2"
%   group_sf2_2                  verslun — grammar: "Group SF2"
%   group_wf2_2                  æfi — grammar: "Group WF2"
%   borg_type                    borg
%   skip_type                    skip
%   group_sf3_2                  móðir — grammar: "Group SF3"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
