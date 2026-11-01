% rules/gil/adjectives.lp
% Kiribati (Gilbertese) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 898091: Kiribati (Gilbertese): Grammar Handbook (1979), pages 145, 150, 157, 159, 170, 175, 191, 197, 204
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ab_aab_aki_type              ab'aab'aki
%   anaanau_type                 anaanau
%   buaakaka_type                buaakaka
%   raoiroi_type                 raoiroi
%   rietaata_type                rietaata
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
