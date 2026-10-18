% rules/bfn/verbs.lp
% Bunaq verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389398: Bunaq: A Papuan language of central Timor (2009), pages 251, 362, 379, 385, 388, 391
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   l_conjugation_class_iv_bivalent_verbs aba, epek — grammar: "l-conjugation class IV bivalent verbs"
%   s_conjugation                agal, umi — grammar: "s-conjugation"
%   class_iii_bivalent_verbs     ue, ume — grammar: "Class III bivalent verbs"
% Irregular (listed in data/verbs.exceptions.tsv): bilan, lumaq
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
