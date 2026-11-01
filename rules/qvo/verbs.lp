% rules/qvo/verbs.lp
% Quichua verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11470: Gramática quichua didáctica de la lengua quichua con las últimas reformas de la Real Acade (1997), pages 87, 90, 102
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   micuy_type                   micuy
%   verbos_simples               cuyana — grammar: "VERBOS SIMPLES"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
