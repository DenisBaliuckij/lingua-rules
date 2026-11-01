% rules/otw/verbs.lp
% Ojibwe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289621: Sketch of Grammar of the Chippeway Languages (2006), pages 40, 43, 44, 53, 76, 77, 84, 87, 88, 95, 97, 98
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   zhahwane_type                zhahwane
%   potential_mood               koonemah — grammar: "Potential Mood"
%   zhahwanemahbun_type          zhahwanemahbun
%   zhawanega_type               zhawanega
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
