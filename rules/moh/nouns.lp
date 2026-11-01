% rules/moh/nouns.lp
% Mohawk nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38713: Le mohawk (2007), pages 2, 4
%   doc 74121: Topics in Mohawk Grammar (1988), pages 178
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   kanakta_type                 kanákta
%   onentsha_type                onéntsha
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
