% rules/gyd/verbs.lp
% Kayardild verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2664: Kayardild Morphology and Syntax (2018), pages 37, 70
%   doc 2665: A Grammar of Kayardild With Historical-Comparative Notes on Tangkic (1995), pages 229
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verb_roots_ending_in_a       kaɳaca — grammar: "verb roots ending in /a/"
%   pati_type                    pati
%   puu_type                     puɻu
% Irregular (listed in data/verbs.exceptions.tsv): palat ̪a
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
