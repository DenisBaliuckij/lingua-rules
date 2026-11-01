% rules/agn/verbs.lp
% Agutaynen verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389555: A Brief Overview of Agutaynen Grammar (2010), pages 19, 49
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   actor_focus_set_1            adal — grammar: "Actor Focus Set 1"
%   actor_focus_set_2            koma — grammar: "Actor Focus Set 2"
%   actor_focus_set_4            olik — grammar: "Actor Focus Set 4"
%   actor_focus_set_3            tabid — grammar: "Actor Focus Set 3"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
