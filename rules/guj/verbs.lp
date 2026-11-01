% rules/guj/verbs.lp
% Gujarati verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389998: A Simplified Grammar of the Gujarati Language and Vocabulary (1892), pages 40, 42, 43, 44, 51, 52, 54, 55, 57, 59, 67, 69, 70, 72
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   utar_type                    utar
%   intransitive_verb_active_voice_karmak_bh utarvun — grammar: "Intransitive Verb. Active Voice (Karmak Bhed or Mul Bhed)"
%   utar_vun_type                utar-vun
%   passive_of_the_transitive_verb dekhvuTi — grammar: "Passive of the Transitive Verb"
%   hava_type                    hava
% Irregular (listed in data/verbs.exceptions.tsv): javun, joie, thavun
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
