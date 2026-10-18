% rules/pyu/verbs.lp
% Puyuma verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 20726: The Puyuma language (1991), pages 25, 33, 34, 39, 40
%   doc 388552: A Reference Grammar of Puyuma, an Austronesian Language of Taiwan (2007), pages 116, 118, 124, 196, 211, 358
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dirus_type                   dirus
%   takaw_type                   takaw
%   category_d                   alepe — grammar: "Category D"
%   category_c                   madeki — grammar: "Category C"
%   category_c_2                 matengadaw — grammar: "Category C"
%   category_d_2                 mdiai — grammar: "Category D"
%   intransitive_verbs_with_realis_ma_and_ir deki — grammar: "Intransitive verbs with realis ma- and irrealis/imperative ka-"
%   category_d_3                 kudung — grammar: "Category D"
%   intransitive_verbs_with_realis_ma rengay — grammar: "Intransitive verbs with realis ma-"
%   intransitive_verbs_with_realis_ma_and_ir_2 ruwa — grammar: "Intransitive verbs with realis ma- and irrealis/imperative ka-"
%   intransitive_verbs_with_realis_ma_and_ir_3 tangis — grammar: "Intransitive verbs with realis ma- and irrealis/imperative ka-"
%   intransitive_verbs_with_no_realis_affix aremeng — grammar: "Intransitive verbs with no realis affix and irrealis/imperative ka-"
%   intransitive_verbs_with_no_realis_affix_2 inaba — grammar: "Intransitive verbs with no realis affix and irrealis/imperative ka-"
%   intransitive_verbs_with_realis_ma_2 re’ani — grammar: "Intransitive verbs with realis ma-"
%   intransitive_verbs_with_no_realis_affix_3 saeru — grammar: "Intransitive verbs with no realis affix and irrealis/imperative ka-"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
