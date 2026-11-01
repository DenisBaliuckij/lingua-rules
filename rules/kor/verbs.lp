% rules/kor/verbs.lp
% Korean verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 52775: Korean: An Essential Grammar (2015), pages 132, 147, 149, 170, 237
%   doc 52812: Korean Grammar: A Systemic Functional Approach (2014), pages 56
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
% Irregular (listed in data/verbs.exceptions.tsv): ittih-ta, ppalkah-ta, toe-ta, 깔다, 놀다, 살다, 알다, 울다
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
