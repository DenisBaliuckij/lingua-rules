% rules/txu/verbs.lp
% Kayapó verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389829: Gramática Pedagógica Kayapó (1989), pages 64, 229, 230, 231, 232
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   verbos_intransitivos         tẽ — grammar: "Verbos Intransitivos"
%   verbos_transitivos           karê — grammar: "Verbos Transitivos"
%   verbos_descritivos_tipo_a    kanê — grammar: "Verbos Descritivos Tipo A"
%   verbos_descritivos_tipo_b    kum — grammar: "Verbos Descritivos Tipo B"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
