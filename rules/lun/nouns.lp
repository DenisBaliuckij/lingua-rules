% rules/lun/nouns.lp
% Lunda nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2894: Lunda Grammar: A Morphosyntactic and Semantic Analysis (2003), pages 101, 102, 121, 153, 158, 159, 166, 230, 231, 262
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   classes_9_2_animates         mbala — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates      mpaku — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_2       mpembi — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_3       mvudi — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_2    nchatu — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_4       nchila — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_3    ndalu — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_5       ndimi — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_6       ndowa — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_7       nfumu — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_4    nfunu — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_8       nfwa — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_5    ngonga — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_9       nhembi — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_6    njeki — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_10      nkakulula — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_11      nlomboli — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_12      noda — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_13      nsefu — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_14      nshi — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_7    ntamba — grammar: "Classes 9/10 inanimates"
%   classes_9_2_animates_15      ntana — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_16      ntanishi — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_17      nuvu — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_18      nvwali — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_19      nweneni — grammar: "Classes 9/2 animates"
%   classes_9_2_animates_20      nzhinzhi — grammar: "Classes 9/2 animates"
%   classes_9_10_inanimates_8    nzhita — grammar: "Classes 9/10 inanimates"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
