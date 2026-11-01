% rules/cat/verbs.lp
% Valencian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68656: Gramática de la lengua catalana (1915), pages 390, 408, 449, 455, 467, 469, 472, 480
%   doc 93074: Nova gramàtica de la llengua valenciana (2016), pages 262, 409, 415, 443, 448, 467, 469, 471, 473, 475, 477, 479, 481, 483, 485, 487, 489, 491, 493
%   doc 388264: Catalan Grammar (n.d.), pages 16, 17, 18, 19, 24, 25, 26, 27, 29, 30, 35, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54
%   doc 389605: Gramàtica normativa valenciana (2006), pages 250, 251, 252, 253, 265, 266, 267, 268, 269, 270, 272, 274, 276, 277, 278, 279, 280, 281, 282, 283, 284, 286, 287, 288, 289, 290, 291, 292, 293
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ii_group_re_e_r              perdre — grammar: "II group -re ; -(e)r"
%   sentir_type                  sentir, eixir
%   model_del_verb_tindre_o_tenir tindre — grammar: "Model del verb tindre (o tenir)"
%   model_del_verb_vindre_o_venir vindre — grammar: "Model del verb vindre (o venir)"
%   i_group_ar                   cantar — grammar: "I group -ar"
%   iii_group_ir_with_suffix     servir, rostir — grammar: "III group : -ir with suffix"
%   model_del_verb_vendre        vendre — grammar: "Model del verb vendre"
%   romandre_type                romandre
%   dir_type                     dir
%   model_del_verb_engolir       engolir — grammar: "Model del verb engolir"
%   respondre_type               respondre
%   model_del_verb_valdre        valdre, caldre — grammar: "Model del verb valdre"
%   caure_type                   caure
%   model_del_verb_batre         batre — grammar: "Model del verb batre"
%   model_del_verb_intervindre_o_intervenir intervindre — grammar: "Model del verb intervindre (o intervenir)"
%   model_del_verb_lluir         lluir — grammar: "Model del verb lluir"
%   model_del_verb_pertanyer     pertànyer — grammar: "Model del verb pertànyer"
%   riure_type                   riure
%   primera_conjugacio           donar — grammar: "primera conjugació"
%   model_del_verb_escriure      escriure — grammar: "Model del verb escriure"
%   viure_type                   viure
%   model_del_verb_oir           oir — grammar: "Model del verb oir"
%   veure_type                   veure
%   model_del_verb_jaure         jaure — grammar: "Model del verb jaure"
%   model_del_verb_obrir         obrir — grammar: "Model del verb obrir"
%   model_del_verb_omplir        omplir — grammar: "Model del verb omplir"
%   model_del_verb_traure        traure — grammar: "Model del verb traure"
%   model_del_verb_tossir        tossir — grammar: "Model del verb tossir"
%   model_del_verb_llegir        llegir — grammar: "Model del verb llegir"
%   model_del_verb_teixir        teixir — grammar: "Model del verb teixir"
%   model_del_verb_vestir        vestir — grammar: "Model del verb vestir"
%   fotre_type                   fotre
%   vencer_type                  vèncer
%   fotir_type                   fotir
%   venir_type                   venir
%   rentar_se_type               rentar-se
%   tenir_type                   tenir
% Irregular (listed in data/verbs.exceptions.tsv): anar, asseure, beure, cabre, collir, complaure, cosir, coure, creure, cruixir, créixer, córrer ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
