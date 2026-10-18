% rules/kmq/verbs.lp
% Gwama verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296217: Gwama, a Little-known Endangered Language of Ethiopia: A Sketch of its Grammar and Lexicon (2010), pages 8, 9, 10, 11, 12, 14, 19, 20, 25
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   a_type                       ωa
%   hoyo_type                    hoyo
%   top_type                     t’op
%   sit_type                     s’it
%   ho_type                      ho
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
