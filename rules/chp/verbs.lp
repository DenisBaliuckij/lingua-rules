% rules/chp/verbs.lp
% Chipewyan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 104979: Grammaire de la langue montagnaise (n.d.), pages 116, 200, 220, 226, 234, 236, 237, 247, 252, 270, 272, 281, 286, 295, 301, 302, 312, 313, 315, 316, 317, 318, 323, 335
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   hodesttin_type               hodesttin
%   nesaz_type                   nes‘az
%   naodesenn_type               naodes’enn
%   nesshil_type                 nesshi‘l
%   toutansli_type               tou‘tansli
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
