% rules/afb/verbs.lp
% Emirati Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44421: Emirati Arabic: A Comprehensive Grammar (2024), pages 72, 73, 110, 183
%   doc 44425: A Short Reference Grammar of Gulf Arabic (n.d.), pages 34, 36, 40, 41, 43, 44, 59, 60, 63, 64, 72, 85, 86, 87
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_ii                     darras — grammar: "Class II"
%   doubled_verbs_class_i        dass — grammar: "Doubled Verbs (Class I)"
%   class_viii_hollow_verbs      htaaj — grammar: "Class VIII hollow verbs"
%   class_x_hollow_verbs         staraaH — grammar: "Class X hollow verbs"
%   class_x                      stariiH — grammar: "Class X"
%   class_i_doubled_verbs        diss — grammar: "Class I Doubled Verbs"
%   class_i_doubled_verbs_2      hutt — grammar: "Class I Doubled Verbs"
%   class_ii_2                   diras — grammar: "Class II"
%   class_vii                    ntiras — grammar: "Class VII"
%   class_viii                   rtaaH, siil — grammar: "Class VIII"
%   class_viii_2                 stagal — grammar: "Class VIII"
%   class_vi                     tsaawar — grammar: "Class VI"
%   class_i_hollow_verbs         tiiH — grammar: "Class I hollow verbs"
%   class_iv                     axbar — grammar: "Class IV"
%   class_ix                     bya&d — grammar: "Class IX"
%   hollow_verbs_classes_i_and_vii gaal — grammar: "Hollow verbs (Classes I and VII)"
%   sound_quadriliteral          gasmar — grammar: "Sound quadriliteral"
%   class_ix_2                   hmarr — grammar: "Class IX"
%   class_vii_2                  nwakal — grammar: "Class VII"
%   class_vii_3                  saaf — grammar: "Class VII"
%   class_iii                    saafar — grammar: "Class III"
%   class_vii_4                  saal — grammar: "Class VII"
%   class_viii_3                 staga'l — grammar: "Class VIII"
%   class_x_2                    staqfar — grammar: "Class X"
%   class_x_3                    starts — grammar: "Class X"
%   class_ii_3                   tannas — grammar: "Class II"
%   sound_derived_quadriliteral  tgasmar — grammar: "Sound derived quadriliteral"
%   class_vi_2                   twahhag — grammar: "Class VI"
%   class_v                      twannas — grammar: "Class V"
%   class_iii_2                  waafag — grammar: "Class III"
%   class_iii_3                  xaasam — grammar: "Class III"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
