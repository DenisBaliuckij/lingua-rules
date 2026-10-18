% rules/dim/verbs.lp
% Dime verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 221: A Grammar of Dime (2008), pages 81, 92, 94, 137, 156
%   doc 388461: A Grammatical Sketch of Dime (Dim-Af) of the Lower Omo (1975), pages 78
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   copula_equative_attributive  dan — grammar: "Copula Equative/attributive"
%   copula_possessive            deen — grammar: "Copula Possessive"
%   copula_negative              yi-kay — grammar: "Copula Negative"
%   k_ay_type                    k'ay
%   type_ii                      kub — grammar: "Type II"
%   type_ii_2                    s’aah — grammar: "Type II"
%   type_ii_3                    ta’lk — grammar: "Type II"
%   type_i                       wuc#’u — grammar: "Type I"
%   type_i_2                     yizi — grammar: "Type I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
