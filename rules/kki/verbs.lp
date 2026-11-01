% rules/kki/verbs.lp
% Kagulu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22416: The Kagulu language of Tanzania: Grammar, texts and vocabulary (2008), pages 104, 126, 129, 130, 187
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kukwenda_type                kukwenda
%   kusalima_type                kusalima
%   kujua_type                   kujua
%   sm_neg_e                     kulima — grammar: "SM-NEG-… -e"
%   sm_neg_e_2                   kulonga — grammar: "SM-NEG-… -e"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
