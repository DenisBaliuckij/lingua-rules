% rules/aon/nouns.lp
% Arapesh nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105279: Arapesh (1942), pages 41, 52, 53
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   noun_class_xii               arukoteyh — grammar: "Noun Class XII"
%   noun_class_xii_2             awiuh — grammar: "Noun Class XII"
%   noun_class_xii_3             ejau^i — grammar: "Noun Class XII"
%   noun_class_xii_4             hjauleyh — grammar: "Noun Class XII"
%   noun_class_xii_5             huruweruh — grammar: "Noun Class XII"
%   noun_class_xii_6             irukweuh — grammar: "Noun Class XII"
%   noun_class_xii_7             jaliuh — grammar: "Noun Class XII"
%   noun_class_xii_8             meiuh — grammar: "Noun Class XII"
%   noun_class_xii_9             nayh — grammar: "Noun Class XII"
%   noun_class_xii_10            negauh — grammar: "Noun Class XII"
%   noun_class_xii_11            nokwayh — grammar: "Noun Class XII"
%   noun_class_xii_12            paweyh — grammar: "Noun Class XII"
%   noun_class_xii_13            rahoyh — grammar: "Noun Class XII"
%   noun_class_xii_14            sarakmyh — grammar: "Noun Class XII"
%   noun_class_xii_15            sigaliyh — grammar: "Noun Class XII"
%   noun_class_xii_16            sorauh — grammar: "Noun Class XII"
%   noun_class_xii_17            unoyh — grammar: "Noun Class XII"
%   noun_class_xii_18            urouh — grammar: "Noun Class XII"
%   noun_class_xii_19            utouh — grammar: "Noun Class XII"
% Irregular (listed in data/nouns.exceptions.tsv): niuh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
