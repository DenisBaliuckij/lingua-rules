% rules/lez/verbs.lp
% Lezgian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388327: A Grammar of Lezgian (1993), pages 24, 25, 73, 80, 81, 94, 100, 126, 156, 180, 198
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   gun_type                     gun
%   raxun_type                   raxun
%   un_type                      £un
% Irregular (listed in data/verbs.exceptions.tsv): ja
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
