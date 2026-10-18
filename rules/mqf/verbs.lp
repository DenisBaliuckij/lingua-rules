% rules/mqf/verbs.lp
% Momuna verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73458: Jewish Languages: Text specimens, grammatical, lexical, and cultural sketches (2021), pages 312, 314, 318
%   doc 105879: Manuel de la langue assyrienne (1880), pages 210, 224, 249, 253, 254
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   farlirn_type                 farlirn, koyfn
% Irregular (listed in data/verbs.exceptions.tsv): hobn, zayn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
