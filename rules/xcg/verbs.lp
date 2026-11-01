% rules/xcg/verbs.lp
% Gaulish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389582: Gallo-Brittonic (Unfinished-Draft) (n.d.), pages 15, 16, 17, 18, 24, 26, 27, 35, 37
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   emi_type                     ēmi
%   iii                          ber-e — grammar: "III"
%   t_preterite                  bertet — grammar: "t-preterite"
%   i                            berw-ā — grammar: "I"
%   iv                           bug — grammar: "IV"
%   strong_verb                  cli-nu — grammar: "strong verb"
%   strong_verb_2                man-ye — grammar: "strong verb"
%   vi                           pri-na — grammar: "VI"
%   ii                           rād-ī — grammar: "II"
%   weak_verb                    sepī — grammar: "weak verb"
%   s_preterite                  tawet — grammar: "s-preterite"
%   v                            wed-ye — grammar: "V"
% Irregular (listed in data/verbs.exceptions.tsv): to be
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
