% rules/ayo/adjectives.lp
% Ayoreo adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22565: Ayoreo (Zamuco). A grammatical sketch (2010), pages 17, 22, 24, 25
%   doc 22566: La flessione possessiva dell’ayoreo (2010), pages 8
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   edoi_type                    edoi
%   ueradi_type                  ueradi
%   querui_type                  querui
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
