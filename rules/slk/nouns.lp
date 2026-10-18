% rules/slk/nouns.lp
% Slovak nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389001: Slovak (2002), pages 9, 13, 14, 15, 29, 30, 31
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   neuter_i_stems_now_vf_stems  jahňa — grammar: "Neuter /i/-stems (now /Vf-stems)"
%   stems                        kosť — grammar: "/-stems"
%   hard_masculine_former_o_and_u_stems chlap — grammar: "'Hard' masculine former o- and u-stems"
%   hard_masculine_former_o_and_u_stems_2 dub — grammar: "'Hard' masculine former o- and u-stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
