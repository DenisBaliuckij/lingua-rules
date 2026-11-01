% rules/lij/verbs.lp
% Tabarchino (Ligurian) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388932: Grammatica del tabarchino (2005), pages 72, 73, 74, 75, 112, 114, 117, 122, 126, 170, 172, 175, 176, 178, 180, 183, 185, 189, 193, 195, 196, 197, 198, 199
%   doc 816516: Grammaire Monégasque (1909), pages 22, 33, 34, 35, 38, 42, 46, 55, 57, 58, 59, 64, 65, 66, 67, 68, 71, 75, 76, 81, 82, 84
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   terza_coniugazione           uài — grammar: "Terza coniugazione"
%   terza_coniugazione_2         puài — grammar: "Terza coniugazione"
%   terza_coniugazione_3         savài — grammar: "Terza coniugazione"
%   quarta_coniugazione          muì, arvì — grammar: "Quarta coniugazione"
%   cruvi_type                   crüvì
%   durmi_type                   durmì
%   parti_type                   partì
%   groupb_infinmf_en_a          aimà — grammar: "GROUPB INFINmF EN « A -."
%   seconda_coniugazione         bàive, móve — grammar: "Seconda coniugazione"
%   ano_type                     anò
%   conjugaison_a_l_inf_nll_if_en_i fini — grammar: "CONJUGAISON A L'INF/Nll'IF EN« I•"
%   c2e_groupe_intinrrrf_en_e    lire — grammar: "2e GROUPE : INTINrrrF EN « E »"
%   pule_type                    pulè
%   vende_type                   vende
%   aimar_type                   aimar
%   servi_type                   servì
%   serviu_type                  servìu
%   finir_type                   finir
%   quarta_coniugazione_2        finì — grammar: "quarta coniugazione"
%   lavu_type                    lavu
%   aver_type                    avér
% Irregular (listed in data/verbs.exceptions.tsv): andà, dà, dì, esse, fà, stà, être
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
