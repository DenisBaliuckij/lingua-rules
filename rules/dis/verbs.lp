% rules/dis/verbs.lp
% Dimasa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8007: A Dimasa Grammar (n.d.), pages 52
%   doc 19465: Dimasa Language: Structure and Texts (2024), pages 43
%   doc 104023: An outline grammar and dictionary of the Kachari (Dimasa) language (1908), pages 10, 15, 19
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   khalai_type                  khalái
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
