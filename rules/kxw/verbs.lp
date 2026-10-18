% rules/kxw/verbs.lp
% Konai verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38195: Konai Reference Grammar (2016), pages 31, 32, 33, 86, 88, 128, 296, 297, 298, 299
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   type_6                       tobø — grammar: "type 6"
%   type_3a                      baha — grammar: "type 3a"
%   type_4                       fiya — grammar: "Type 4"
%   type_2                       hebe — grammar: "Type 2"
%   type_3a_2                    sa — grammar: "type 3a"
%   type_7                       togo — grammar: "type 7"
%   type_6a                      mõ — grammar: "Type 6a"
%   type_1                       si — grammar: "Type 1"
%   type_4b                      sia — grammar: "Type 4b"
%   type_4_2                     tia — grammar: "type 4"
%   type_7_2                     wo — grammar: "type 7"
%   type_2_lsv_e                 dege — grammar: "Type 2 (LSV e)"
%   type_5                       dugu — grammar: "type 5"
%   type_7b                      duwo — grammar: "Type 7b"
%   type_6b                      fo — grammar: "Type 6b"
%   type_7_3                     folo — grammar: "type 7"
%   type_7a_lsv_o                goso — grammar: "Type 7a (LSV o)"
%   type_4c                      tila — grammar: "Type 4c"
%   type_5_2                     yodu — grammar: "Type 5"
%   type_2_2                     bese — grammar: "Type 2"
%   type_1_2                     bigi — grammar: "Type 1"
%   type_5_3                     du — grammar: "Type 5"
%   type_2_3                     igi-se — grammar: "type 2"
%   type_1_3                     sa-gi — grammar: "type 1"
%   type_4a_lsv_i_c_a            sabiya — grammar: "Type 4a (LSV i(C)a)"
%   sese_gu_type                 sese-gu
%   type_4_3                     suwa — grammar: "type 4"
%   type_3c_lsv_a                tawa — grammar: "Type 3c (LSV a)"
% Irregular (listed in data/verbs.exceptions.tsv): næ, nê, tafala, taga
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
