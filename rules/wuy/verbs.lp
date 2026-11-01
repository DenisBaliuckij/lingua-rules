% rules/wuy/verbs.lp
% Wauyai Maˈya; Batta verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289383: Sketch grammars of Wauyai Maˈya and Batta: Two undocumented Austronesian languages of Raja (2026), pages 15, 18, 31, 36, 37, 39
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_ii                     a¹l — grammar: "Class II"
%   class_iii                    ba³y — grammar: "Class III"
%   class_i                      o¹²l — grammar: "Class I"
%   class_ii_2                   ru³g — grammar: "Class II"
%   class_i_2                    sa¹² — grammar: "Class I"
%   class_i_3                    su¹²p, bu³t, du¹²m, ta¹g — grammar: "Class I"
%   class_i_4                    bu¹²n — grammar: "Class I"
%   class_i_5                    ma¹²t — grammar: "Class I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
