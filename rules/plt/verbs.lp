% rules/plt/verbs.lp
% Malagasy verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93550: A concise grammar of the Malagasy language (1890), pages 35
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   defective_auxiliary_verbs    tia — grammar: "Defective Auxiliary Verbs"
%   defective_auxiliary_verbs_2  mahay — grammar: "Defective Auxiliary Verbs"
%   defective_auxiliary_verbs_3  mahazo — grammar: "Defective Auxiliary Verbs"
%   defective_auxiliary_verbs_4  mhy — grammar: "Defective Auxiliary Verbs"
%   defective_auxiliary_verbs_5  mety — grammar: "Defective Auxiliary Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
