% rules/bcl/verbs.lp
% Bicolano verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289503: Gramática hispano-bicol según el método de Ollendorff (1904), pages 126, 216
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   c3a_conjugacion_jvajt_en_activa_y_pa1t_e manliblíb — grammar: "3·a conjugación: JVaJt en activa y Pa1t en pasiva"
%   conjugacion_ivagca_en_activa_y_pagca_en magcasala — grammar: "Conjugación IVagca en activa y Pagca en pasiva"
%   conjugacion_ivagca_en_activa_y_pagca_en_2 magcaútang — grammar: "Conjugación IVagca en activa y Pagca en pasiva"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
