% rules/es/verbs.lp
% Spanish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 83710: Gramática de la lengua castellana (1741), pages 56, 59, 61, 63, 65, 66, 67, 68, 74, 75, 77, 86, 89, 90, 93, 95, 97, 107, 109, 110, 113, 114
%   doc 109734: Grammaire complète de la langue espagnole d'après celle de la Royale Académie de Madrid, a (n.d.), pages 61, 74, 83, 84, 85, 86, 89, 94, 96, 98, 100, 101, 102, 105, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122
%   doc 388678: A New Reference Grammar of Modern Spanish (1994), pages 66, 180, 186, 187, 189, 192, 194, 196, 197, 199, 200, 201, 202, 203, 204, 210, 212, 213, 214, 215, 216, 218
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   sentir_type                  sentir
%   regular_verbs                comer — grammar: "regular verbs"
%   regular_verbs_2              hablar — grammar: "regular verbs"
%   tercera_conjugacion          partir — grammar: "tercera conjugación"
%   segunda_conjugacion          temer — grammar: "segunda conjugación"
%   third_conjugation_ir         vivir — grammar: "third conjugation (-ir)"
%   haber_type                   haber
%   cambiar_type                 cambiar
%   first_conjugation_ar         amar — grammar: "first conjugation (-ar)"
%   liar_type                    liar
%   saber_type                   saber
%   caer_type                    caer
%   salir_type                   salir
%   verbes_termines_en_uir_deux_syllabes concluir — grammar: "VERBES TERMINÉS EN üir ( DEUX SYLLABES )"
%   verbes_termines_en_uir_deux_syllabes_2 contribuir — grammar: "VERBES TERMINÉS EN üir ( DEUX SYLLABES )"
%   verbes_termines_en_uir_deux_syllabes_3 argüir — grammar: "VERBES TERMINÉS EN üir ( DEUX SYLLABES )"
%   nacer_type                   nacer
%   poseer_type                  poseer
%   cerrar_type                  cerrar
%   mover_type                   mover
%   spelling_changes_cir         esparcir — grammar: "spelling changes -cir"
%   spelling_changes_zar         rezar — grammar: "spelling changes -zar"
%   sacar_type                   sacar
%   suponer_type                 suponer
%   spelling_changes_cer         vencer — grammar: "spelling changes -cer"
%   delinquir_type               delinquir
%   podrir_type                  podrir
%   cocer_type                   cocer
%   taner_type                   taner
%   zambullir_type               zambullir
%   cinir_type                   ciñir
%   grunir_type                  grunir
%   adquirir_type                adquirir
%   jugar_type                   jugar
%   leer_type                    leer
%   proteger_type                proteger
%   creer_type                   creer
%   verbes_termines_en_ducir     conducir — grammar: "Verbes terminés en DUCIR"
%   reir_type                    reír
%   aguijonear_type              aguijonear
%   sondear_type                 sondear
% Irregular (listed in data/verbs.exceptions.tsv): acertar, apostar, ascender, asir, caber, conocer, dar, decir, discernir, dormir, entender, estar ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
