% rules/bor/verbs.lp
% Bororo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 24726: A grammar of Bororo (1979), pages 212
%   doc 388721: Ainore Boe egore: um estudo descritivo da língua bororo e conseqüências para a teoria de c (2008), pages 65
%   doc 388722: Gramática Pedagógica Bororo: Um Esboço Preliminar (2013), pages 14, 15, 16, 18, 21, 51, 61, 75, 100
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kodu_type                    kodu
%   wogu_type                    wogu
%   reflexivas                   aimo — grammar: "reflexivas"
%   kodumode_type                kodumode
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
