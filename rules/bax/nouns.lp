% rules/bax/nouns.lp
% Shupamem nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296456: The Grammar of Shupamem (2012), pages 73, 92, 93, 126, 199, 342, 345, 347
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   c11_12_l_hl_lh_hlh           car — grammar: "11/12: L-HL/LH-HLH"
%   c5_6_n                       egg — grammar: "5/6: Ø-/N"
%   low_toned_nominal_expressions lar — grammar: "low toned nominal expressions"
%   low_toned_nominal_expressions_2 malori — grammar: "low toned nominal expressions"
%   low_toned_nominal_expressions_3 nsak — grammar: "low toned nominal expressions"
%   high_toned_nominal_expressions samb — grammar: "High toned nominal expressions"
%   high_toned_nominal_expressions_2 sangra — grammar: "High toned nominal expressions"
%   high_toned_nominal_expressions_3 sas — grammar: "High toned nominal expressions"
%   low_toned_nominal_expressions_4 sasra — grammar: "low toned nominal expressions"
%   low_toned_nominal_expressions_5 sekera — grammar: "low toned nominal expressions"
%   high_toned_nominal_expressions_4 sosro — grammar: "High toned nominal expressions"
%   low_toned_nominal_expressions_6 sra — grammar: "low toned nominal expressions"
%   high_toned_nominal_expressions_5 tas — grammar: "High toned nominal expressions"
%   high_toned_nominal_expressions_6 tat — grammar: "High toned nominal expressions"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
