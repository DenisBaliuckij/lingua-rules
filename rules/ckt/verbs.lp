% rules/ckt/verbs.lp
% Chukchi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41280: Parlons tchouktche : Une langue de Sibérie (n.d.), pages 35, 36, 67
%   doc 46660: Chukchee: A Comparative Study of the Chukchee Group of Languages (1922), pages 77, 95, 116, 117, 137
%   doc 93664: A Grammar of Chukchi (1999), pages 174
%   doc 389775: Chukchee (1921), pages 76, 77, 89, 92
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   intransitif                  вирик — grammar: "intransitif"
%   type_ii                      txc — grammar: "Type II"
%   type_ii_2                    tcej — grammar: "Type II"
%   verbal_stem_sh_ck_1_l_h_ik   sh — grammar: "VERBAL STEM Sh, ck, 1', l h , Ik"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
