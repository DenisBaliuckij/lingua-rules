% rules/wne/adjectives.lp
% Pashto adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389680: Descriptive Grammar of Pashto and its Dialects (2014), pages 138, 144, 146, 149, 190, 253, 279, 280, 282, 283, 284, 285, 287, 288, 289, 291, 297, 299, 300
%   doc 389681: Pashto (1997), pages 8, 9, 10, 11, 18, 19, 24
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gp_class_ii_syncope_ii       سور — grammar: "GP Class II, Syncope II"
%   gp_class_ii_back_vowel_lowering پوخ — grammar: "GP Class II, back vowel lowering"
%   gp_class_iiia                zalmáy — grammar: "GP Class IIIa"
%   gp_class_i_war_alternation   zṛawár — grammar: "GP Class I, ـور /wár/ alternation"
%   adj2b_m                      nargy — grammar: "Adj2b (m)"
%   adj2b_f                      nar£!) — grammar: "Adj2b (f)"
%   adj2a_m                      t!gay — grammar: "Adj2a (m)"
%   adj_a_m                      tit — grammar: "Adj 'a (m)"
%   adj_a_f                      tita — grammar: "Adj 'a (f)"
%   adjj_m_f                     xaystg — grammar: "AdjJ (m/f)"
%   adj_b_m                      zig — grammar: "Adj 'b (m)"
%   adj_b_f                      zigg — grammar: "Adj 'b (f)"
%   gp_class_i_stem_alternation_o spak — grammar: "GP Class I, stem alternation: ə∼o"
%   adj2a_f                      t!ge — grammar: "Adj2a (f)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
