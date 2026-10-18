% rules/wdj/verbs.lp
% Wadjiginy verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 72112: Grammatical Sketches of Indian Languages with Comparative Vocabulary and Texts (Part I) (1971), pages 31, 32, 71, 72, 133
%   doc 289419: The Phonology and Morphology of Bachamal (Wogait) (1990), pages 102
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   bhr_type                     bhr
% Irregular (listed in data/verbs.exceptions.tsv): kha 'to eat
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
