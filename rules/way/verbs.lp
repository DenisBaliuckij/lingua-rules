% rules/way/verbs.lp
% Wayana verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 106223: A Wayana Grammar (1978), pages 9, 10, 17
%   doc 388926: A Grammar of Wayana (2005), pages 139, 140, 213
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_1                      ipanarjma — grammar: "Class 1"
%   s_a_intransitive_verbs       ka — grammar: "S A intransitive verbs"
%   s_a_intransitive_verbs_2     mek — grammar: "S A intransitive verbs"
%   s_a_intransitive_verbs_3     tek — grammar: "S A intransitive verbs"
%   class_6                      apei — grammar: "Class 6"
%   class_3                      ene — grammar: "Class 3"
%   class_4                      epi — grammar: "Class 4"
%   class_5                      t-i — grammar: "Class 5"
%   class_2                      onam — grammar: "Class 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
