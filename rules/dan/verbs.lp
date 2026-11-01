% rules/dan/verbs.lp
% Danish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389832: Danish (2005), pages 13, 14, 16, 17
%   doc 927903: Danish: An Essential Grammar (n.d.), pages 40, 41, 61, 72, 77, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 101, 110, 115, 116
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   conjugation_iv               løbe — grammar: "Conjugation IV"
%   gradation_series_a_o_a       slå — grammar: "Gradation series å-o-å"
%   conjugation_ii               spise — grammar: "Conjugation II"
%   gradation_series_y_a_u       synge — grammar: "Gradation series y-a-u"
%   fourth_conjugation_stem_vowel_in_e se — grammar: "FOURTH CONJUGATION: STEM VOWEL IN -e-"
%   i                            vente — grammar: "I"
%   conjugation_i                leve — grammar: "Conjugation I"
%   conjugation_i_2              tro — grammar: "Conjugation I"
%   conjugation_iii              lægge — grammar: "Conjugation III"
%   first_conjugation            arbejde, studere — grammar: "First Conjugation"
%   third_conjugation            burde — grammar: "third conjugation"
%   third_conjugation_2          dø — grammar: "third conjugation"
%   second_conjugation           dølge, følge — grammar: "second conjugation"
%   fourth_conjugation           falde — grammar: "fourth conjugation"
%   gradation_series_y_y         flyde — grammar: "Gradation series y-ø-y"
%   second_conjugation_2         fortælle — grammar: "second conjugation"
%   gradation_series_a_i_a       få, gå — grammar: "Gradation series å-i-å"
%   i_2                          gro — grammar: "I"
%   stem_vowel                   græde — grammar: "Stem vowel -æ-"
%   third_conjugation_3          gøre — grammar: "third conjugation"
%   third_conjugation_4          have — grammar: "third conjugation"
%   stem_vowel_e                 hedde — grammar: "Stem vowel -e-"
%   stem_vowel_o                 holde — grammar: "Stem vowel -o-"
%   gradation_series_a           hænge — grammar: "Gradation series æ-a-æ"
%   ii                           høre — grammar: "II"
%   second_conjugation_3         kende, køre — grammar: "second conjugation"
%   stem_vowel_o_2               komme — grammar: "Stem vowel -o-"
%   gradation_series_a_2         kvæde — grammar: "Gradation series æ-a-æ"
%   i_3                          minde — grammar: "I"
%   modal_verbs                  måtte, kunne, skulle — grammar: "modal verbs"
%   gradation_series_a_a         skære, bære — grammar: "Gradation series æ-a-å"
%   second_conjugation_4         smøre — grammar: "second conjugation"
%   stem_vowel_o_3               sove — grammar: "Stem vowel -o-"
%   gradation_series_a_u         sprække, trække — grammar: "Gradation series æ-a-u"
%   gradation_series_a_a_2       stjæle — grammar: "Gradation series æ-a-å"
%   second_conjugation_5         strække — grammar: "second conjugation"
%   gradation_series_a_o_a_2     stå — grammar: "Gradation series å-o-å"
%   second_conjugation_6         sælge — grammar: "second conjugation"
%   second_conjugation_7         træde — grammar: "second conjugation"
%   third_conjugation_5          turde — grammar: "third conjugation"
%   modal_verbs_2                ville — grammar: "modal verbs"
%   second_conjugation_8         vælge — grammar: "second conjugation"
%   gradation_series_a_3         æde — grammar: "Gradation series æ-å-æ"
%   ii_2                         bruge — grammar: "II"
%   gradation_series_a_u_2       hjælpe — grammar: "Gradation series æ-a-u"
%   i_vowel                      roe — grammar: "I vowel"
%   second_conjugation_9         sætte — grammar: "second conjugation"
%   gradation_series_a_u_3       træffe — grammar: "Gradation series æ-a-u"
%   second_conjugation_10        række — grammar: "second conjugation"
%   third_conjugation_6          sige — grammar: "third conjugation"
%   second_conjugation_11        spørge — grammar: "second conjugation"
%   gradation_series_o           sværge — grammar: "Gradation series æ-o-æ"
%   second_conjugation_12        tælle — grammar: "second conjugation"
% Irregular (listed in data/verbs.exceptions.tsv): bede, betyde, bide, binde, blive, bringe, briste, bryde, byde, drage, drikke, drive ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
