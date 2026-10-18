% rules/cul/verbs.lp
% Kulina verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23874: Gramática da língua kulina : dialeto do igarapé do Anjo (1986), pages 17, 34, 38, 39, 44, 45, 46, 47, 48, 50, 53, 54, 57
%   doc 25185: A Grammar of Kulina (2014), pages 76, 156, 240
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   jipaji_type                  jipaji
%   verbos_que_comecam_com_vogal edade — grammar: "verbos que começam com vogal"
%   verbos_que_comecam_com_vogal_2 odade — grammar: "verbos que começam com vogal"
%   tabo_type                    tabo
%   dade_type                    dade
%   verbos_de_ligacao            ja — grammar: "verbos de ligação"
%   verbos_de_ligacao_2          na — grammar: "verbos de ligação"
%   tija_type                    tija
%   verbos_que_comecam_com_vogal_3 attade — grammar: "verbos que começam com vogal"
%   oda_type                     oda
%   jipa_type                    jipa
% Irregular (listed in data/verbs.exceptions.tsv): hawi ha, hawi ha-hona
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
