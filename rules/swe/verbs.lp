% rules/swe/verbs.lp
% Swedish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 96720: Swedish: An Elementary Grammar-Reader (1980), pages 21, 29, 30, 46, 58, 86, 87, 89, 90, 99, 330, 331
%   doc 388275: Swedish (2005), pages 13, 16, 17
%   doc 388276: Beginning Swedish (1939), pages 53, 54, 60, 67, 69, 84, 112, 114, 115, 226
%   doc 388278: Modern Swedish Grammar (1923), pages 54, 57, 71, 73, 75, 77, 78, 82, 99, 110, 127, 134, 136, 139, 141
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   auxiliary_verbs              hava — grammar: "Auxiliary Verbs"
%   class_iv                     le — grammar: "Class IV"
%   conjugation_i                älska — grammar: "Conjugation I"
%   second_class                 kopa — grammar: "second class"
%   third_conjugation            tro, bero — grammar: "Third Conjugation"
%   class_iv_2                   flyta — grammar: "Class IV"
%   class_iv_3                   komma — grammar: "Class IV"
%   class_iv_4                   skriva — grammar: "Class IV"
%   class_iv_5                   springa — grammar: "Class IV"
%   bygga_type                   bygga
%   class_i                      kasta — grammar: "Class I"
%   kopa_type                    köpa
%   class_ii                     löpa — grammar: "Class II"
%   class_iii                    sy — grammar: "Class III"
%   class_ii_2                   väva — grammar: "Class II"
%   conjugation_iv               avbryta — grammar: "Conjugation IV"
%   first_conjugation            dansa — grammar: "First Conjugation"
%   residual_verbs               kunna — grammar: "Residual verbs"
%   conjugation_i_2              stänga — grammar: "Conjugation I"
%   conjugation_ii               sänta — grammar: "Conjugation II"
%   first_conjugation_2          tclefonera — grammar: "First Conjugation"
%   conjugation_ii_2             vakna — grammar: "Conjugation II"
%   valja_type                   välja
%   second_conjugation           besöka, läsa — grammar: "second conjugation"
%   second_conjugation_2         betyda — grammar: "second conjugation"
%   gladja_type                  glädja
%   residual_verbs_2             skola — grammar: "Residual verbs"
%   c4th_conjugation             fara — grammar: "4th conjugation"
%   c2nd_conjugation             höra — grammar: "2nd conjugation"
%   first_conjugation_3          kalla — grammar: "First Conjugation"
% Irregular (listed in data/verbs.exceptions.tsv): binda, bora, bring a, dolja, ga, gora, gå, göra, heta, lagga, leva, lieta ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
