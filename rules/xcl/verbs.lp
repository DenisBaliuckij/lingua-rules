% rules/xcl/verbs.lp
% Kilikisch-Armenisch verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388855: A Grammatical Sketch of Classical Armenian (2009), pages 16, 17, 18, 20, 26
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   berem_type                   berem
%   sirem_type                   sirem
% Irregular (listed in data/verbs.exceptions.tsv): dnem, gam, linim, tam
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
