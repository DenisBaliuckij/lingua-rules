% rules/hrt/verbs.lp
% Hertevin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626363: Der neuaramäische Dialekt von Hertevin (Provinz Siirt) (1988), pages 50, 68, 75
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dmihet_type                  dmihet
%   verba_tertiae_w_ii_stamm     hšw — grammar: "Verba tertiae w (II. Stamm)"
% Irregular (listed in data/verbs.exceptions.tsv): hwe III
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
