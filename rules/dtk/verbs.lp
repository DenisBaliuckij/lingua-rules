% rules/dtk/verbs.lp
% Togo-Teŋukan (Dogon) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289625: A Living Grammar Sketch of Teŋukan Dogon (2023), pages 14, 15, 28, 29, 30
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   oi_type                      oi
%   demun_type                   demun
%   gii_type                     gii
%   nonhin_type                  nonhin
%   yru_type                     yɛru
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
