% rules/acr/verbs.lp
% Achi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78533: Ukemik K’utuuj re Ch’a’teem Achi: Gramática Pedagógica del Idioma Achi (2018), pages 118, 119
%   doc 78540: Gramática descriptiva idioma Maya Achi (2003), pages 85
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   chapanik_type                chapanik
%   warik_type                   warik
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
