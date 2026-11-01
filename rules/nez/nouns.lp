% rules/nez/nouns.lp
% Nez Perce nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389539: Studies in Nez Perce Grammar and Discourse (1985), pages 60, 96, 97, 143, 149
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   partial_reduplication        cicqi'c — grammar: "Partial Reduplication"
%   stems_with_the_associative_or_stative_su himiin — grammar: "Stems with the Associative or Stative Suffix -iin/-i'n"
%   partial_reduplication_2      kfickuc — grammar: "Partial Reduplication"
%   partial_reduplication_3      kuhet — grammar: "Partial Reduplication"
%   partial_reduplication_4      penniqe — grammar: "Partial Reduplication"
%   stems_in_final_t             pist — grammar: "Stems in Final t"
%   partial_reduplication_5      pit'ii'n — grammar: "Partial Reduplication"
%   stems_in_final_t_2           qeqiit — grammar: "Stems in Final t"
%   stems_in_final_t_3           qiamsit — grammar: "Stems in Final t"
%   partial_reduplication_6      qliwn — grammar: "Partial Reduplication"
%   stems_in_final_t_4           talatat — grammar: "Stems in Final t"
%   stems_in_final_t_5           tewliikt — grammar: "Stems in Final t"
%   stems_in_final_t_6           we^weqt — grammar: "Stems in Final t"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
