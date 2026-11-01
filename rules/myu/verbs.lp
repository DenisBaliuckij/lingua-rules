% rules/myu/verbs.lp
% Mundurukú verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46703: Gramática Munduruku (1974), pages 44
%   doc 389906: Aspectos da Língua Munduruku (2004), pages 42, 50, 54, 58, 81, 170, 188, 190, 191, 260, 313, 316, 317, 318, 319
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   a2jam3_type                  a²jåm³
%   dot3_type                    dot³
%   ju2_type                     ju²
%   verbo_referente_ao_sujeito   je³ka¸pik²pi¿² — grammar: "VERBO REFERENTE AO SUJEITO"
%   intransitivo                 kop² — grammar: "INTRANSITIVO"
%   transitivo_causativo         i³mu²pik³u²pi¿² — grammar: "TRANSITIVO-CAUSATIVO"
%   je3ku2kum2_type              je³ku²kum²
%   transitivo                   to²jot³jon³ — grammar: "TRANSITIVO"
%   do2jot3_type                 do²jot³
%   e2_em2_type                  e²'em²
%   no3mu3wa2_type               no³mu³wã²
%   ya3_2jo2_type                ya³'æ²jo²
%   ya3juy_type                  ya³juy¸
%   verbos_posicionais_de_estado cø¿³'i² — grammar: "verbos posicionais/de estado"
%   dop3dom3_type                dop³dom³
%   verbos_posicionais_de_estado_2 mø¿³'i² — grammar: "verbos posicionais/de estado"
%   verbos_posicionais_de_estado_3 po³'i² — grammar: "verbos posicionais/de estado"
%   verbos_posicionais_de_estado_4 to³ro³'i² — grammar: "verbos posicionais/de estado"
%   verbos_posicionais_de_estado_5 xik³'i² — grammar: "verbos posicionais/de estado"
% Irregular (listed in data/verbs.exceptions.tsv): a³jåm³jåm³, do³don³, i³'uk²'u¿²
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
