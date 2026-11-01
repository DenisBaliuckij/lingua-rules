% rules/ctu/verbs.lp
% Chol verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 45212: Lak T'an: A Grammar of the Chol (Mayan) Word (1973), pages 227, 244
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i_i_intransitives            CAm — grammar: "i/i intransitives"
%   c0_a_transitives             hak — grammar: "0/a transitives"
%   i_i_intransitives_2          hil — grammar: "i/i intransitives"
%   el_i_intransitives           k'as — grammar: "el/i intransitives"
%   c0_a_transitives_2           k'us — grammar: "0/a transitives"
%   c0_a_transitives_3           kAn — grammar: "0/a transitives"
%   el_i_intransitives_2         la:m — grammar: "el/i intransitives"
%   el_i_intransitives_3         p — grammar: "el/i intransitives"
%   i_i_intransitives_3          ti:p — grammar: "i/i intransitives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
