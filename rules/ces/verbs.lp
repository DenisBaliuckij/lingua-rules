% rules/ces/verbs.lp
% Czech verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389868: Czech (2011), pages 22, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35, 36, 40, 43
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   nonsuffixed_stems_ending_in_a_j_aj hrát — grammar: "Nonsuffixed Stems Ending in a j (aj)"
%   nonsuffixed_stems_ending_in_a_j_cj hřejt — grammar: "Nonsuffixed Stems Ending in a j (čj)"
%   nonsuffixed_stems_ending_in_a_j_cj_2 klejt — grammar: "Nonsuffixed Stems Ending in a j (čj)"
%   nonsuffixed_stems_ending_in_a_j_yj kryt — grammar: "Nonsuffixed Stems Ending in a j (yj)"
%   nonsuffixed_stems_ending_in_an_obstruent pečit — grammar: "Nonsuffixed Stems Ending in an Obstruent (h/k)"
%   nonsuffixed_stems_ending_in_a_j_ij pijt — grammar: "Nonsuffixed Stems Ending in a j (ij)"
%   nonsuffixed_stems_ending_in_a_j_uj plout — grammar: "Nonsuffixed Stems Ending in a j (uj)"
% Irregular (listed in data/verbs.exceptions.tsv): být, chtít, hnát, jet, jíst, jít, mlít, moci, mít, spát, stát, vzít ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
