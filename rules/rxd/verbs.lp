% rules/rxd/verbs.lp
% Ngardi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 820883: A Grammar of Ngardi (2021), pages 334, 340, 383, 384, 488, 492
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i_y                          karri — grammar: "I (y)"
%   conjugation_ii               luwa — grammar: "Conjugation II (-Ø)"
%   conjugation_iv_l             nga — grammar: "Conjugation IV (l)"
%   conjugation_iii_ng           pu — grammar: "Conjugation III (ng)"
%   iii_ng                       ka — grammar: "III (ng)"
%   v_n                          ya-go — grammar: "V (n)"
%   ii                           yupa — grammar: "II (-Ø)"
%   iv_l                         nga-eat — grammar: "IV (l)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
