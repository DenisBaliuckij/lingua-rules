% rules/unm/verbs.lp
% Southern Unami Delaware verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92313: A Grammar of Southern Unami Delaware (Lenape) (2021), pages 65, 74, 75, 84, 85, 90, 91, 104, 119, 121, 123
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ti_la                        lp — grammar: "TI(la)"
%   ti_lb                        m — grammar: "TI(lb)"
%   ti_lb_2                      lm — grammar: "TI(lb)"
%   ai_inflection                pa — grammar: "AI inflection"
%   ai                           lanbl — grammar: "AI"
%   ai_2                         lpa — grammar: "AI"
%   independent_indicative_negative_ti_objec w — grammar: "Independent indicative negative, TI objective with singular object"
%   independent_indicative_negative_ti_absol wYI — grammar: "Independent indicative negative, TI absolute"
%   ta_inverse                   akowil — grammar: "TA inverse"
%   ai_inflection_2              anbl — grammar: "AI inflection"
%   ai_3                         lw — grammar: "AI"
%   ii                           lw::ll::lt — grammar: "II"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
