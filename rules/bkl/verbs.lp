% rules/bkl/verbs.lp
% Berik verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38394: A Grammatical Sketch of Berik (1988), pages 12, 21, 22
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   tini_type                    tini
%   jila_type                    jila
%   tumili_type                  tumili
%   gwebana_type                 gwebana
%   nwini_type                   nwini
%   sarbana_type                 sarbana
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
