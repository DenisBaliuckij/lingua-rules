% rules/wsk/nouns.lp
% Woisika nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289410: A Waskia grammar sketch and vocabulary (1978), pages 57, 64
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inalienable_nouns_monosyllabic_e_ue de, ne — grammar: "inalienable nouns (monosyllabic e > ue)"
%   inalienable_nouns_polysyllabic_e_o deleng — grammar: "inalienable nouns (polysyllabic e > o)"
%   inalienable_nouns_a_ua       kadi — grammar: "inalienable nouns (a > ua)"
%   inalienable_nouns_a_ua_2     kamin — grammar: "inalienable nouns (a > ua)"
%   inalienable_nouns_a_ua_3     kamlik — grammar: "inalienable nouns (a > ua)"
%   inalienable_nouns_a_ua_4     kamung — grammar: "inalienable nouns (a > ua)"
%   inalienable_nouns_a_ua_5     kamuru — grammar: "inalienable nouns (a > ua)"
%   inalienable_nouns_polysyllabic_e_o_2 kedang — grammar: "inalienable nouns (polysyllabic e > o)"
%   inalienable_nouns_polysyllabic_e_o_3 kema — grammar: "inalienable nouns (polysyllabic e > o)"
%   inalienable_nouns_i_u        kimik — grammar: "inalienable nouns (i > u)"
%   inalienable_nouns_polysyllabic_e_o_4 nemang — grammar: "inalienable nouns (polysyllabic e > o)"
%   inalienable_nouns_monosyllabic_e_ue_2 net — grammar: "inalienable nouns (monosyllabic e > ue)"
%   inalienable_nouns_i_u_2      nikum — grammar: "inalienable nouns (i > u)"
%   inalienable_nouns_i_u_3      niwut — grammar: "inalienable nouns (i > u)"
%   inalienable_nouns_a_ua_6     tago — grammar: "inalienable nouns (a > ua)"
% Irregular (listed in data/nouns.exceptions.tsv): ina
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
