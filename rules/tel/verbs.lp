% rules/tel/verbs.lp
% Telugu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 708736: A Grammar of Modern Telugu (1985), pages 56, 57, 58, 86, 89, 92, 96, 103, 104, 138, 139, 141, 142, 143, 144
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ammu_type                    ammu
%   v                            win — grammar: "V"
%   iic                          tiis — grammar: "IIc"
%   iiib                         kaaluc — grammar: "IIIb"
%   iv                           koTT — grammar: "IV"
%   ib                           aDugu — grammar: "Ib"
%   irregular                    poo — grammar: "irregular"
%   irregular_2                  wacc — grammar: "irregular"
%   irregular_3                  cuuc — grammar: "irregular"
%   ammeenu_type                 ammEEnu
%   kalus_type                   kalus
%   pad_type                     paD
%   piluc_type                   piluc
%   waccu_type                   waccu
%   aw_type                      aw
%   iiia                         caac — grammar: "IIIa"
%   iiid                         cuupinc — grammar: "IIId"
%   icc_type                     icc
%   kaadu_type                   kaadu
%   iib                          taDus — grammar: "IIb"
%   iid                          waac — grammar: "IId"
%   well_type                    weLL, tann
%   leec_type                    leec
%   amm_type                     amm
% Irregular (listed in data/verbs.exceptions.tsv): kuurcon, kuurcun, lee, uNDu, un
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
