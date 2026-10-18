% rules/kut/verbs.lp
% Kutenai verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16457: Grammar of the Kutenai Language (1926), pages 33, 50, 69
%   doc 852562: Linguae ksanka (Kootenai) elementa grammaticae (1870), pages 51
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   e_k_type                     e-k
%   qa_type                      qa
%   ukomnni_type                 ukomnni
%   ki_type                      ki
%   qanatz_type                  qanatz
%   forma_n                      utsukwati — grammar: "forma (n)"
% Irregular (listed in data/verbs.exceptions.tsv): axe
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
