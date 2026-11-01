% rules/sns/nouns.lp
% Nahavaq nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389736: A Grammar of Nahavaq (Malakula, Vanuatu) (2009), pages 53, 79, 84
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   directly_possessed_nouns_with_labial_har embju — grammar: "directly possessed nouns with labial harmony"
%   directly_possessed_nouns_with_labial_har_2 mbjulu — grammar: "directly possessed nouns with labial harmony"
%   directly_possessed_nouns_with_labial_har_3 mwaɁajmbju — grammar: "directly possessed nouns with labial harmony"
%   directly_possessed_nouns_with_labial_har_4 ne-heβje — grammar: "directly possessed nouns with labial harmony"
%   directly_possessed_nouns_with_labial_har_5 tinβju — grammar: "directly possessed nouns with labial harmony"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
