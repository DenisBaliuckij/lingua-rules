% rules/tig/verbs.lp
% Tigre verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15342: The Tigre Language of Gindaʿ, Eritrea: Short Grammar and Texts (2014), pages 50, 79, 86, 108, 126
%   doc 15343: The Morphology of the Tigre Noun (1962), pages 22, 34, 35, 38, 39, 40, 41, 42, 43, 73, 74, 80, 81, 82, 83
%   doc 15347: Tigre Grammar and Texts (1983), pages 35, 36, 41, 44, 45, 47, 53, 54, 63, 64, 65, 67, 68, 70, 71, 145, 147, 148, 149, 152
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   type_a_verbs_with_final_laryngeals bal'a — grammar: "TYPE A verbs with final laryngeals"
%   active_participles_of_the_triradical_ver qatal — grammar: "Active participles of the triradical verb, Type A"
%   first_conjugation_ar         ḳatla — grammar: "first conjugation (-ar)"
%   type_c                       habara — grammar: "TYPE c"
%   saqa_type                    saqa
%   wada_type                    wada
%   atrasana_type                atrasana
%   angafa_type                  angafa
%   type_c_2                     kataba — grammar: "TYPE C"
%   type_b                       mazzana — grammar: "TYPE B"
%   type_a                       qansa — grammar: "TYPE A"
%   abattala_type                abattala
%   prefix_ta                    taqarraca — grammar: "PREFIX ta-"
%   atbaggasa_type               atbaggasa
%   verb_of_existence            halla — grammar: "Verb of Existence"
%   verb_of_existence_2          ʿala — grammar: "Verb of Existence"
%   independent_copula           ana — grammar: "independent copula"
%   a_a_stem_verbs               ʾaḳtala — grammar: "ʾa-A Stem Verbs"
%   c_stem_verbs                 ḳātala — grammar: "C Stem Verbs"
%   type_at_c                    adddwara — grammar: "Type 'at-C"
%   quadriradicals_of_type_c     anqalaqala — grammar: "quadriradicals of type C"
%   quadriradicals_of_type_a     anqatqata — grammar: "quadriradicals of type A"
%   quadriradicals_of_type_c_2   aqabatara — grammar: "quadriradicals of type C"
%   type_a_c                     asdbata — grammar: "Type 'a-C"
%   quadriradicals_of_type_c_3   asnaqanaqa — grammar: "quadriradicals of type C"
%   quadriradicals_of_type_a_2   astargama — grammar: "quadriradicals of type A"
%   type_at_c_2                  atbdka — grammar: "Type 'at-C"
%   type_a_c_2                   atdqfa)ca — grammar: "Type 'a-C"
%   type_at_c_3                  athddagd, atndyata — grammar: "Type 'at-C"
%   type_at_c_4                  atkdhada — grammar: "Type 'at-C"
%   quadriradicals_of_type_c_4   atmasamasa — grammar: "quadriradicals of type C"
%   type_at_c_5                  atmdsa'a — grammar: "Type 'at-C"
%   quadriradicals_of_type_c_5   attanbadabada — grammar: "quadriradicals of type C"
%   type_atta_c                  attandsa — grammar: "Type 'atta-C"
%   quadriradicals_of_type_a_3   attanqalqala — grammar: "quadriradicals of type A"
%   type_atta_c_2                attaqdbala — grammar: "Type 'atta-C"
%   quadriradicals_of_type_a_4   attasqamqama — grammar: "quadriradicals of type A"
%   type_at_c_6                  atwalada — grammar: "Type 'at-C"
%   type_d                       balalasa — grammar: "TYPE D"
%   type_ta_c                    bbdlfajha — grammar: "Type ta-C"
%   type_ta_c_2                  bldwasa — grammar: "Type ta-C"
%   type_ta_c_3                  bsd'ara — grammar: "Type ta-C"
%   type_ta_c_4                  bydmama — grammar: "Type ta-C"
%   quadriradicals_of_type_c_6   qaratata — grammar: "quadriradicals of type C"
%   type_b_verbs_with_final_laryngeals sammd'a — grammar: "TYPE B verbs with final laryngeals"
%   type_c_3                     sdrca — grammar: "Type C"
%   type_ta_c_5                  ta'drafa, tawdlada — grammar: "Type ta-C"
%   type_ta_c_6                  tabdqa — grammar: "Type ta-C"
%   type_ta_c_7                  tagayasa — grammar: "Type ta-C"
%   type_ta_c_8                  taqdbala — grammar: "Type ta-C"
%   quadriradicals_of_type_a_5   targama — grammar: "quadriradicals of type A"
%   quadriradicals_of_type_c_7   tebarabara — grammar: "quadriradicals of type C"
%   quadriradicals_of_type_a_6   tsqantaia — grammar: "quadriradicals of type A"
%   quadriradicals_of_type_a_7   atamtama — grammar: "quadriradicals of type A"
%   type_atta_b                  atta-B — grammar: "Type 'atta-B"
%   quadriradicals_with_semivowels_c_wcc dawrara — grammar: "quadriradicals with semivowels (C wCC)"
%   quadriradicals_with_semivowels_cy_cc deraba — grammar: "quadriradicals with semivowels (Cy CC)"
%   quadriradicals_with_semivowels_c_c_c_sv fanta — grammar: "quadriradicals with semivowels (c c c sv)"
%   quadriradicals_with_semivowels_cy_c_sv gega — grammar: "quadriradicals with semivowels (Cy C SV)"
%   quadriradicals_with_semivowels_c_wc_sv gola — grammar: "quadriradicals with semivowels (C wC SV)"
%   quadriradicals_with_semivowels_c_wcc_2 gorata — grammar: "quadriradicals with semivowels (C wCC)"
%   type_d_2                     hararama — grammar: "TYPE D"
%   type_c_4                     kawala — grammar: "Type C"
%   active_participles_of_the_triradical_ver_2 maqatlay — grammar: "Active participles of the triradical verb, Type B"
%   active_participles_of_the_triradical_ver_3 maqtdlay — grammar: "Active participles of the triradical verb, >a-A"
%   active_participles_of_the_triradical_ver_4 matqatatlay — grammar: "Active participles of the triradical verb, >at-D"
%   active_participles_of_the_triradical_ver_5 matqatlay — grammar: "Active participles of the triradical verb, t-C"
%   active_participles_of_the_triradical_ver_6 matqattDlay — grammar: "Active participles of the triradical verb, f-A/B"
%   quadriradicals_with_semivowels_c_wc_sv_2 nawna — grammar: "quadriradicals with semivowels (C wC SV)"
%   active_participles_of_verbs_of_more_than qartla — grammar: "Active Participles of Verbs of More Than Three Radicals Type A"
%   active_participles_of_the_triradical_ver_7 qatla — grammar: "Active Participles of the Triradical Verb Type A"
%   type_c_5                     qdhara — grammar: "Type C"
%   passive_participles_of_the_triradical_ve qdtul — grammar: "Passive participles of the triradical verb, Type A"
%   passive_participles_of_the_triradical_ve_2 qsttul — grammar: "Passive participles of the triradical verb, Type B"
%   passive_participles_of_the_triradical_ve_3 quttul — grammar: "Passive participles of the triradical verb, Type C"
%   type_c_verbs_with_final_laryngeals sarfej'a — grammar: "TYPE c verbs with final laryngeals"
%   type_c_6                     tdyana — grammar: "Type C"
% Irregular (listed in data/verbs.exceptions.tsv): ba'a, haya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
