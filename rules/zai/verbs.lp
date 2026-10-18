% rules/zai/verbs.lp
% Zapotec (Isthmus) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389292: Gramática popular del zapoteco del istmo (2001), pages 39, 41, 42, 72, 78
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   causativo_s                  guiaba — grammar: "causativo s-"
%   causativo_z                  guieechu — grammar: "causativo z-"
%   causativo_g                  gaze — grammar: "causativo g-"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
