% rules/fan/nouns.lp
% Fang nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16009: Focus in Fang and other Bantu A70 languages (2010), pages 6
%   doc 22704: Curso de lengua Fang (1990), pages 43, 46, 61, 71, 72, 110, 112, 119
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   clases_5_6_5_8_5_2_5_6_el_u  a-beñ — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_2 a-bo — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_3 a-bum — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_4 a-béñ — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_5 a-ló — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_6 a-mán — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_7 d-óeñ — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_8 d-óp — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_5_6_5_8_5_2_5_6_el_u_9 dz-ís — grammar: "Clases 5/6; 5/8; 5/2; 5, 6 (=el.u.)"
%   clases_1_2                   m-iná — grammar: "Clases 1/2"
%   clases_1_2_2                 m-ot — grammar: "Clases 1/2"
%   clases_1_2_3                 m-ón — grammar: "Clases 1/2"
%   clases_1_2_4                 n-nórn — grammar: "Clases 1/2"
%   clases_1_2_5                 ngin — grammar: "Clases 1/2"
% Irregular (listed in data/nouns.exceptions.tsv): n-ner¡, n-nóm, ngáá
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
