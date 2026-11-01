% rules/tgl/verbs.lp
% Tagalog verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626727: A Tagalog Reference Grammar (1972), pages 106, 107, 109, 131, 250
%   doc 843405: A Systemic Functional Grammar of Tagalog (2025), pages 123
%   doc 896507: Nueva gramática Hispano-Tagala: minuciosamente escrita con arreglo al uso común y de los m (n.d.), pages 20, 28, 54, 59, 60, 83, 93, 95, 96, 97, 99, 101, 102, 103, 109, 112, 113, 116, 131, 135, 149
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   segundo_modelo_de_conjugacion_en_activa aral — grammar: "SEGUNDO MODELO DE CONJUGACIÓN EN ACTIVA CON PARTÍCULA «MAG»"
%   quinto_modelo_de_conjugacion_en_activa_c magpaka-buti — grammar: "quinto modelo de conjugación en activa con partícula 'magpaka'"
%   himasok_type                 himasok
%   ibig_type                    ibig
%   cuarto_modelo_de_conjugacion_en_activa_c magpa-inóip — grammar: "CUARTO MODELO DE CONJUGACIÓN EN ACTIVA CON PARTÍCULA "MAGPA.""
%   hampas_type                  hampás
%   tercer_modelo_de_conjugacion_en_activa_c utang — grammar: "TERCER MODELO DE CONJUGACIÓN EN ACTIVA CON PARTÍCULA "MAGKA.""
%   sexto_modelo_de_conjugacion_en_activa_co magpati-luhód — grammar: "sexto modelo de conjugación en activa con partícula "MAGPATI""
%   ninth_conjugation_moka       makalimot — grammar: "ninth conjugation (moka-)"
%   nagpatiluhod_type            nagpatiluhod
%   nakapagpatiluhod_type        nakapagpatiluhod
%   magpapatiluhod_type          magpapatiluhod
%   magsalita_type               magsalitá
% Irregular (listed in data/verbs.exceptions.tsv): basahin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
