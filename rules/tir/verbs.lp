% rules/tir/verbs.lp
% Tigrinya verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 103933: Documents Tigrigna (Ethiopien Septentrional): Grammaire et Textes (1941), pages 27, 31, 34, 42, 43, 45, 47, 49, 51, 54, 56, 59, 60, 69
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   imparfait_simple             siibb-Jr — grammar: "imparfait simple"
%   sbiir_type                   sbiir
%   gerondif                     siibirii — grammar: "Gerondif"
%   aallo_type                   aallo
%   triliteres_du_type_non_gemine_a siibiir — grammar: "triliteres du type non gemine (A)"
%   imparfait_compose_avec_aallo siibrallawu — grammar: "imparfait compose avec aallo"
%   yiibil_n_type                yiibil-n
%   type_c_causatif_aa           barag — grammar: "Type C causatif (aa-)"
%   type_b_causatif_aa           biiddal — grammar: "Type B causatif (aa-)"
%   quadriliteres_causatif_aa    miiskar — grammar: "Quadriliteres causatif (aa-)"
%   aastiinkiirii_type           aastiinkiirii
%   quinquiliteres_causatif_aa   nbiibal — grammar: "Quinquiliteres causatif (aa-)"
%   type_a_theme_reflechi_passif sibir — grammar: "Type A. Theme reflechi-passif"
%   so_type                      so
%   tiistiinfiisii_type          tiistiinfiisii
%   aan_qiitqiitii_type          aan-qiitqiitii
%   type_c_theme_reflechi_passif barik — grammar: "Type C. Theme reflechi-passif"
%   quadriliteres_theme_reflechi_passif miiskir — grammar: "Quadriliteres. Theme reflechi-passif"
%   niitogii_type                niitogii
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
