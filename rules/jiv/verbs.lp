% rules/jiv/verbs.lp
% Shuar verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 77490: A Grammar Sketch of Shuar With focus on the verb phrase (2014), pages 134, 152
%   doc 78086: Visión funcional de la lengua Shuar (2012), pages 140, 141, 142, 143, 144, 145, 146, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 162, 163, 164, 166, 167, 168, 169
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   tseke_type                   tséke
%   yaunchu_nankamasu_ejeturma_preterito_imp achi-k-tin — grammar: "YAUNCHU NANKAMASU EJETURMA (PRETÉRITO IMPERFECTO)"
%   preterito_perfecto_puntual   sumá — grammar: "PRETÉRITO PERFECTO PUNTUAL"
%   nakur_us_tin_type            nakur-us-tin
%   we_type                      we
%   auj_type                     aúj
%   amu_ta_type                  amu-ta
%   najanma_umimtikin_modo_imperativo_timiat suma — grammar: "NAJANMA UMIMTIKIN (MODO IMPERATIVO) TIMIATRUSAN (PUNTUAL)"
%   amu_k_tin_type               amu-k-tin
%   preterito_imperfecto_subjuntivo amu-k, achi-ki — grammar: "PRETERITO IMPERFECTO (SUBJUNTIVO)"
%   we_type_2                    wé
%   nekas_najanma_modo_indicativo_tsawantri we-tin — grammar: "NEKAS NAJANMA (MODO INDICATIVO) TSAWANTRI APATRACHMA (TIEMPOS SIMPLES) YAMAI (PRESENTE)"
%   presente_puntual_subjuntivo  achi-k — grammar: "PRESENTE PUNTUAL (SUBJUNTIVO)"
%   preterito_perfecto_puntual_2 achi-kiuit — grammar: "PRETÉRITO PERFECTO PUNTUAL"
%   condicional_compuesto        achi-kiá — grammar: "CONDICIONAL COMPUESTO"
%   preterito_anterior           achí-kma — grammar: "PRETÉRITO ANTERIOR"
%   preterito_pluscuamperfecto_puntual achí-kmia — grammar: "PRETÉRITO PLUSCUAMPERFECTO PUNTUAL"
%   auj_saa_jai_type             auj-saa-jai
%   auj_ji_aj_type               aúj-ji-aj
%   auj_sa_taj_type              aúj-sa-taj
%   auj_tiat_ji_type             aúj-tiat-ji
%   chicha_type                  chicha
%   nakur_us_aj_type             nakur-us-aj
%   nakur_us_taj_type            nakur-us-taj
%   nakur_usma_jai_type          nakur-usma-jai
%   nakur_usuit_ji_type          nakur-usuit-ji
%   tsaka_progresivo             tseke-ja-tá — grammar: "TSAKA (PROGRESIVO)"
%   ii_type                      ii
%   futuro_imperfecto_puntual_subjuntivo achi-kmi — grammar: "FUTURO IMPERFECTO PUNTUAL (SUBJUNTIVO)"
%   nakur_usmi_j_type            nakur-usmi-j
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
