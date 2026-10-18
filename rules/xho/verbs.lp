% rules/xho/verbs.lp
% Xhosa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 845679: The Kafir Language: Comprising a Sketch of Its History; which Includes a General Classific (1850), pages 170, 173, 221, 222, 229, 232, 233, 257
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ya_type                      ya
%   regular_verb                 teta — grammar: "regular verb"
%   nga_type                     nga
%   ba_type                      ba
%   first_future_tense           kuteta — grammar: "First Future tense"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
