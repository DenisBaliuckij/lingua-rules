% rules/kin/nouns.lp
% Kinyarwanda nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73934: Trainee Kinyarwanda Book (n.d.), pages 6, 7, 44, 54, 70
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   umuganga_type                umuganga
%   umuhinzi_type                umuhinzi
%   umurobyi_type                umurobyi
%   umushoferi_type              umushoferi
%   umutetsi_type                umutetsi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
