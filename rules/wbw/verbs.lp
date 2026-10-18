% rules/wbw/verbs.lp
% Wooi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 278: A grammar of Wooi: An Austronesian language of Yapen Island, Western New Guinea (2016), pages 159, 160, 163, 183, 197
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   v_initial                    ena, avayang — grammar: "V-initial"
%   c_initial                    ha — grammar: "C-initial"
%   c_initial_2                  kavio — grammar: "C-initial"
%   c_initial_3                  ra — grammar: "C-initial"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
