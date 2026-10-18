% rules/afr/verbs.lp
% Afrikaans verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388355: Afrikaans (2000), pages 19
%   doc 940178: Praktisches Lehrbuch der kapholländischen Sprache (Burensprache); Sprachlehre, Gespräche,  (1850), pages 26
%   doc 940186: A Grammar of Afrikaans (1982), pages 12
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   werk_type                    werk
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
