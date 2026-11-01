% rules/rgr/nouns.lp
% Resígaro nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14653: A Grammar of Resígaro (1976), pages 178, 179, 180
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   noun_type_ii_sub_type_iii_body_parts hit — grammar: "Noun Type ii, Sub-type iii, "Body Parts""
%   noun_type_ii_sub_type_ii_iino_l_human_an pi?mi — grammar: "Noun Type ii, Sub-type ii, IiNo:l-human animatc;"
%   noun_type_ii_sub_type_iii_body_parts_2 aigf — grammar: "Noun Type ii, Sub-type iii, "Body Parts""
%   noun_type_ii_sub_type_iv_classifier_noun ma — grammar: "Noun Type ii, Sub-tyPe iv, "Classifier Nouns""
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
