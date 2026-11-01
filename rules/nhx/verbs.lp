% rules/nhx/verbs.lp
% Náhuatl (Mecayapan y Tatahuicapan de Juárez) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 151: Gramática náhuatl de los municipios de Mecayapan y Tatahuicapan de Juárez, Veracruz (2002), pages 39, 44, 49, 51, 52, 53, 60, 78, 104, 106, 107, 108, 109, 127, 128, 129, 134, 143, 144, 178, 179, 182, 192
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   mopata_type                  mopata, isa
%   mecayotia_type               mecayôtiá
%   tercera_conjugacion          nimitzmachtiá — grammar: "tercera conjugación"
%   segunda_conjugacion          soquiyohui — grammar: "segunda conjugación"
%   tonalhuia_type               tônalhuiá
%   cuarta_conjugacion           ajto — grammar: "cuarta conjugación"
%   quinta_conjugacion           cua — grammar: "quinta conjugación"
%   huetzi_type                  huetzi
%   raiz_verbal_de_la_tercera_conjugacion ilpi — grammar: "raíz verbal de la tercera conjugación"
%   raiz_verbal_de_la_primera_conjugacion ita — grammar: "raíz verbal de la primera conjugación"
%   raiz_verbal_de_la_segunda_conjugacion mati — grammar: "raíz verbal de la segunda conjugación"
%   quinta_conjugacion_2         tacua — grammar: "quinta conjugación"
%   cuarta_conjugacion_2         tajtohua — grammar: "cuarta conjugación"
%   verbos_intransitivos_derivados_con_tia hueyitiá — grammar: "verbos intransitivos derivados con -tiá"
%   tisi_type                    tisi
%   tercera_conjugacion_2        mâltiá — grammar: "tercera conjugación"
%   verbo_terminando_en_hui      tejcahui — grammar: "Verbo terminando en -hui"
%   caqui_type                   caqui
%   verbos_del_grupo_a_con_preterito_perfect huejcâhua — grammar: "verbos del grupo A con pretérito perfecto terminando en -j"
%   verbos_con_preterito_perfecto_terminando nejnemi — grammar: "Verbos con pretérito perfecto terminando en -n"
%   verbos_con_preterito_perfecto_terminando_2 nimayâna — grammar: "Verbos con pretérito perfecto terminando en -n (excepciones)"
%   verbos_con_preterito_perfecto_terminando_3 poxôni — grammar: "Verbos con pretérito perfecto terminando en -n (excepciones)"
%   verbos_con_preterito_perfecto_terminando_4 qui-êna — grammar: "Verbos con pretérito perfecto terminando en -n (excepciones)"
%   verbos_con_preterito_perfecto_terminando_5 quichijchimi — grammar: "Verbos con pretérito perfecto terminando en -n"
%   verbos_del_grupo_a_con_preterito_perfect_2 quichîhua — grammar: "verbos del grupo A con pretérito perfecto terminando en -j"
%   verbos_del_grupo_a_con_preterito_perfect_3 quicopêhua — grammar: "verbos del grupo A con pretérito perfecto terminando en -j"
%   verbos_del_grupo_a_con_preterito_perfect_4 quicâhua — grammar: "verbos del grupo A con pretérito perfecto terminando en -j"
%   verbos_con_preterito_perfecto_terminando_6 quijtzoma — grammar: "Verbos con pretérito perfecto terminando en -n"
%   verbos_con_preterito_perfecto_terminando_7 quimana — grammar: "Verbos con pretérito perfecto terminando en -n (excepciones)"
%   verbo_con_preterito_perfecto_terminando quitajcali — grammar: "Verbo con pretérito perfecto terminando en -l"
%   verbos_con_preterito_perfecto_terminando_8 quitajtani — grammar: "Verbos con pretérito perfecto terminando en -n"
%   verbos_con_preterito_perfecto_terminando_9 quitilâna — grammar: "Verbos con pretérito perfecto terminando en -n"
% Irregular (listed in data/verbs.exceptions.tsv): calaqui, chîhua, chôca, ia, miqui, pâqui, quicaqui, quipîqui, quêna, têhua
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
