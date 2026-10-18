% rules/mtj/nouns.lp
% Moskona nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389924: A Grammar of Moskona: An East Bird’s Head Language of West Papua, Indonesia (2010), pages 107, 116, 117, 119, 120, 208, 209, 215
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   inalienable_nouns            egak, osum — grammar: "inalienable nouns"
%   same_sex_siblings            otk-era, otk-esa — grammar: "same sex siblings"
%   efina_type                   efina
%   opposite_sex_sibling         ew-era — grammar: "opposite sex sibling"
%   opposite_sex_sibling_2       ew-esa — grammar: "opposite sex sibling"
%   ewisa_type                   ewisa
%   m_ahina_type                 m-ahina
%   m_ohena_type                 m-ohena
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
