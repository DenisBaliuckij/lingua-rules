% rules/ssy/verbs.lp
% Saho verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73575: A Sketch of Saho Grammar (2005), pages 4, 5, 6, 7, 9, 11
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   faake_type                   faake
%   sik_erhxe_type               sik-erhxe
%   class_iii_verbs_stative_verbs kixina, cusuba — grammar: "Class III verbs: stative verbs"
%   class_iii_verbs_stative_verbs_2 cado — grammar: "Class III verbs: stative verbs"
%   class_iv_verbs_compound_verbs sik-e — grammar: "Class IV verbs: compound verbs"
%   class_iv_verbs_compound_verbs_2 sik-ishe — grammar: "Class IV verbs: compound verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
