% rules/nha/verbs.lp
% Nhanda verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9850: Nhanda: An Aboriginal Language of Western Australia (2001), pages 90, 105, 107, 110, 111
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   y_class_verbs                amdi — grammar: "Y-class verbs"
%   y_class_verbs_2              arliba, aja — grammar: "Y-class verbs"
%   y_class_verbs_3              wada — grammar: "Y-class verbs"
%   y_class_verbs_4              wumba — grammar: "Y-class verbs"
%   y_class_verbs_5              awu — grammar: "Y-class verbs"
%   d_class_verbs                uudada, wadadicada — grammar: "D-class verbs"
%   d_class_verbs_2              wadada, wathada — grammar: "D-class verbs"
%   nh_class_verbs               calvaba — grammar: "NH-class verbs"
%   nh_class_verbs_2             pitu — grammar: "NH-class verbs"
% Irregular (listed in data/verbs.exceptions.tsv): arda, atka, inga, matka, ngala, wurtka, yatka, yatka+yana, yatka+yu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
