% rules/ude/verbs.lp
% Udihe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 386983: A Grammar of Udihe (2001), pages 144, 261, 278, 280, 281, 282
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   bu_type                      bu
%   class_i                      jexe — grammar: "class I"
%   class_ii                     dian — grammar: "class II"
%   e_type                       e
%   non_finite_forms             nodo — grammar: "non-finite forms"
%   active_participles_present_tense dian-a — grammar: "Active participles Present tense"
%   past_participle              diay-ki — grammar: "Past Participle"
%   past_participle_2            e-si — grammar: "Past Participle"
%   hi_type                      hi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
