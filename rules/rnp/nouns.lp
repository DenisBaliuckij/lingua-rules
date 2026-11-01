% rules/rnp/nouns.lp
% Rongpo; Byangsi; Darma; Chaudangsi; Raji nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3251: The Tibeto-Burman Languages of Uttar Pradesh (2004), pages 23, 29, 44, 45, 46
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   lag_type                     lag
%   seru_type                    seru
%   rad_type                     rad
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
