% rules/avk/verbs.lp
% Kotava verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16606: Grammaire officielle complète du Kotava (2008), pages 9, 11
%   doc 16613: Kotava Grammaire officielle complète Version IV.03 (2016), pages 14, 23, 38, 39
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   danka_type                   danka
%   dole_type                    dole
%   estu_type                    estu
%   foli_type                    foli
%   roju_type                    roju
%   ti_type                      ti
%   tl_type                      tl
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
