% rules/xav/verbs.lp
% Xavante verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389613: Morphosyntaxe du xavante, langue jê du Mato Grosso (Brésil) (2011), pages 62, 218
%   doc 389614: Aspectos da língua xavante (2003), pages 21, 22, 28, 37, 49, 63
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   intransitive_verb_class_ib   moræ — grammar: "intransitive verb class Ib"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
