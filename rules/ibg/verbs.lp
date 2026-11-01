% rules/ibg/verbs.lp
% Ibanag verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 894696: Agguiammuan tac cagui gasila gramtica ibanag-castellana (1892), pages 149, 163, 165, 174, 175, 202, 206, 211, 216, 217, 239, 241, 242, 243
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   modelo_na_icatallu_nac_conjugacion subir — grammar: "MODELO NA ICATALLÚ NAC CONJUGACIÓN"
%   ama_type                     ama
%   anduvir_type                 anduvir
%   dar_type                     dar
%   traer_type                   traer
%   oir_type                     oír
%   temer_type                   temer
%   caber_type                   caber
%   ammuan_type                  ammuan
%   maccalap_type                maccálap
%   maggayara_type               maggáyara
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
