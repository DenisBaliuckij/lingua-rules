% rules/lil/verbs.lp
% Lillooet verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 652204: The Lillooet Language: Phonology, Morphology, Syntax (1985), pages 176, 177, 178, 179, 181, 182, 183, 185, 186, 187, 199
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   type_ii_transitivizer        cun — grammar: "type II transitivizer"
%   simple_passive_paradigm      xwitan — grammar: "simple passive paradigm"
%   cut_type                     cut
%   type_i_transitivizer         xwitan-s — grammar: "type I transitivizer"
%   simple_passive_paradigm_2    x'iq — grammar: "simple passive paradigm"
%   complex_declarative_intransitive_forms wa? — grammar: "Complex declarative intransitive forms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
