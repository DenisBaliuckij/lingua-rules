% rules/wrg/verbs.lp
% Warrongo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8223: A Grammar of Warrongo (2011), pages 199, 202, 290, 291, 295, 384, 386
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   y_class_all_a                nyina — grammar: "Y-class (all-a)"
%   l_class_1_transitive_o_final bambo — grammar: "L-class (1): transitive o-final"
%   l_class_1_transitive_i_final ganyji — grammar: "L-class (1): transitive i-final"
%   zero_class_all_l             wadali — grammar: "ZERO-class (all-l)"
%   l_class_1_transitive_a_final baba — grammar: "L-class (1): transitive a-final"
%   l_class_2_intransitive_a_final banda — grammar: "L-class (2): intransitive a-final"
%   l_class_2_intransitive_i_final yodi — grammar: "L-class (2): intransitive i-final"
% Irregular (listed in data/verbs.exceptions.tsv): haha-L Vt 'stab, halga-L Vt 'hit, yqji-ZERO Vi 'laugh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
