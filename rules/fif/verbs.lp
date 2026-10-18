% rules/fif/verbs.lp
% Faifi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92282: A Grammar of Faifi (2018), pages 24, 112, 118, 142, 148, 149, 150, 151, 152, 153
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ag_type                      ʕagəɾ
%   imperfective_form            hiːʃ — grammar: "Imperfective Form"
%   v_reflexive_of_2             ta.fəʕ.ʕa.l-ə — grammar: "V reflexive of 2"
%   iv                           ʔəf.ʕa.l-ə — grammar: "IV"
%   pattern_viii                 ʔɪf.ta.ʕa.l — grammar: "Pattern VIII"
%   pattern_x                    ʔɪs.təf.ʕa.l-ə — grammar: "Pattern X"
%   pattern_xi                   fəʕ.la.g-ə — grammar: "Pattern XI"
%   form_ii                      ʒəw.wa.d — grammar: "Form II"
%   iii                          fa:.ʕa.l-ə — grammar: "III"
%   reciprocal                   ta.fa:.ʕa.l-ə — grammar: "reciprocal"
%   form_ii_2                    ħəw.wa.z — grammar: "Form II"
%   pattern_xii                  ta.fəʕ.la.l-ə — grammar: "Pattern XII"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
