% rules/rmt/verbs.lp
% Domari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389432: A grammatical sketch of Domari (2007), pages 32, 33, 35
%   doc 389433: A Grammar of Domari (2012), pages 150, 151, 162, 234, 270, 272, 273, 274, 275, 277, 278, 279, 305
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   group_23_present_stem_with_s_augment_pas sil — grammar: "Group 23: Present stem with -s-augment, past in -t-"
%   transitives                  šar — grammar: "Transitives"
%   group_3_k_agentive_derivations_from_non strik — grammar: "Group 3: -k- agentive derivations from non-verbs and loan verbs"
%   group_20_present_stem_with_t_augment nas — grammar: "Group 20: Present stem with -t- augment"
%   group_2_transitives_other_roots bag — grammar: "Group 2: Transitives, other roots"
%   group_10_intensifier_perfective_and_td_p row — grammar: "Group 10: Intensifier perfective and Td person-s-:"
%   group_14_vocalic_reduction_in_perfective saka — grammar: "Group 14: Vocalic (reduction in perfective):"
%   group_19_indicative_with_s_augment nig — grammar: "Group 19: Indicative with -s- augment"
%   group_13_vocalic             pi — grammar: "Group 13: Vocalic:"
%   intransitives                šary — grammar: "Intransitives"
%   group_7_contracted_present   kw — grammar: "Group 7: Contracted present"
%   group_18_vocalic_intransitive_derivation mary — grammar: "Group 18: Vocalic/ intransitive derivation"
%   group_6_intensifier_perfective s — grammar: "Group 6: Intensifier-perfective"
%   group_9_present_indicative_with_8 kif — grammar: "Group 9: Present indicative with -8-"
%   transitive_verbs_with_object_pronouns lah — grammar: "Transitive verbs with object pronouns"
%   f_type                       f
% Irregular (listed in data/verbs.exceptions.tsv): aw, bidd- 'want to do, ck, dZa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
