% rules/dgi/nouns.lp
% Dagaare nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38769: Collected Language Notes on Dagaare Grammar (2005), pages 46, 47, 51
%   doc 841825: A dictionary and grammatical sketch of Dagaare (2021), pages 28, 37, 255
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   a_singular_ba_plural         baalä — grammar: "-a singular -ba plural"
%   i_e_0_singular_rl_nl_plural  bfe — grammar: "-I/-E/-0 singular -rl/-nl plural"
%   i_e_0_singular_rl_nl_plural_2 boQÖ — grammar: "-I/-E/-0 singular -rl/-nl plural"
%   a_singular_ba_plural_2       doo — grammar: "-a singular -ba plural"
%   i_e_0_singular_rl_nl_plural_3 durp — grammar: "-I/-E/-0 singular -rl/-nl plural"
%   i_e_0_singular_rl_nl_plural_4 duö — grammar: "-I/-E/-0 singular -rl/-nl plural"
%   rl_nl_singular_e_0_a_plural  döll — grammar: "-rl/-nl singular -E/-0/-A plural"
%   i_e_0_singular_rl_nl_plural_5 gbte — grammar: "-I/-E/-0 singular -rl/-nl plural"
%   rl_nl_singular_e_0_a_plural_2 gyilf — grammar: "-rl/-nl singular -E/-0/-A plural"
%   a_singular_ba_plural_3       nie — grammar: "-a singular -ba plural"
%   i_e_0_singular_rl_nl_plural_6 pie — grammar: "-I/-E/-0 singular -rl/-nl plural"
%   pog_type                     pog
%   a_singular_ba_plural_4       poga — grammar: "-a singular -ba plural"
%   a_singular_ba_plural_5       säana — grammar: "-a singular -ba plural"
%   i_e_0_singular_rl_nl_plural_7 tl£ — grammar: "-I/-E/-0 singular -rl/-nl plural"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
