% rules/wiy/verbs.lp
% Wiyot verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 76929: The Wiyot Language (1964), pages 77, 89, 90
%   doc 110130: Wiyot Grammar and Texts (1925), pages 81, 92, 94
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i_i                          darił — grammar: "I-i"
%   passive                      gagwa’w — grammar: "passive"
%   i_o                          haskipil — grammar: "I-o"
%   i_a                          hutwił — grammar: "I-a"
%   i_a_2                        kamar — grammar: "I-a"
%   passive_2                    vaL — grammar: "passive"
%   i_i_2                        ligił — grammar: "I-i"
%   passive_3                    tsanakw — grammar: "passive"
%   t_ag                         bimohwal — grammar: "T-ag"
%   i_a_3                        biw — grammar: "I-a"
%   t_ib                         hitokws — grammar: "T-ib"
%   i_a_4                        hutw — grammar: "I-a"
%   t_ag_2                       hutwohwal — grammar: "T-ag"
%   i_a_5                        khukšonu — grammar: "I-a"
%   t_aa                         kitanab — grammar: "T-aa"
%   i_i_3                        lag — grammar: "I-i"
%   t_id                         thahlabil — grammar: "T-id"
%   t_id_2                       thalim — grammar: "T-id"
%   i_a_6                        tohl — grammar: "I-a"
%   i_v                          tu — grammar: "I-v"
%   i_a_7                        tóditkadił — grammar: "I-a"
%   i_i_4                        waptił — grammar: "I-i"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
