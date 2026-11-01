% rules/slk/verbs.lp
% Slovak verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389001: Slovak (2002), pages 9, 13, 14, 15, 29, 30, 31
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i_theme                      prosiť — grammar: "i-theme"
%   ie_theme                     vediet — grammar: "ie-theme"
%   theme                        volať — grammar: "я-theme"
%   theme_in_je                  bi€, kryf — grammar: "Theme in -je"
%   theme_in_i                   chodif — grammar: "Theme in -i"
%   theme_in_i_2                 držaf, spaf — grammar: "Theme in -i"
%   themes_in_e_including_one    ist — grammar: "Themes in -e, including -One"
%   themes_in_e_including_one_2  mazaf — grammar: "Themes in -e, including -One"
%   themes_in_e_including_one_3  pisaf — grammar: "Themes in -e, including -One"
%   theme_in_je_2                priaf — grammar: "Theme in -je"
%   theme_in_d_ie                roz-umief — grammar: "Theme in ~d/-ie"
%   theme_in_je_3                saf — grammar: "Theme in -je"
%   theme_in_i_3                 trpief, vidief — grammar: "Theme in -i"
%   theme_in_d_ie_2              volaf — grammar: "Theme in ~d/-ie"
%   themes_in_e_including_one_4  zdvihnuf — grammar: "Themes in -e, including -One"
%   themes_in_e_including_one_5  ziabnuf — grammar: "Themes in -e, including -One"
%   theme_in_i_4                 chvšlif — grammar: "Theme in -i"
%   theme_in_je_4                darovaf — grammar: "Theme in -je"
%   theme_in_d_ie_3              dšvaf — grammar: "Theme in ~d/-ie"
%   themes_in_e_including_one_6  napaf — grammar: "Themes in -e, including -One"
%   theme_in_d_ie_4              sśdzaf — grammar: "Theme in ~d/-ie"
%   theme_in_d_ie_5              vracaf — grammar: "Theme in ~d/-ie"
% Irregular (listed in data/verbs.exceptions.tsv): byf, byt, chcief, daf, jesf, maf, vedief
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
