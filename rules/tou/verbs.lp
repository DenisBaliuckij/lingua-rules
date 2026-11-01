% rules/tou/verbs.lp
% tou verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 852184: The Key to Morell's Graduated Exercises in Grammar and Analysis for the Use of Teachers an (n.d.), pages 39, 42, 43, 45, 46, 47, 52, 53
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   have_type                    have
%   modern_or_regular_conjugation love — grammar: "Modern or Regular Conjugation"
%   may_type                     may
%   can_type                     can
% Irregular (listed in data/verbs.exceptions.tsv): TIew, aiiae, bear, begin, bid, bite, blow, break, chide, choose, clothe, dare ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
