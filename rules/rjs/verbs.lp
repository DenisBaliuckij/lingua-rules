% rules/rjs/verbs.lp
% Rajbanshi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389636: A Sketch of the Phonology and Grammar of Rājbanshi (2008), pages 117, 209, 217, 221, 225
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ja_type                      ja
% Irregular (listed in data/verbs.exceptions.tsv): किह- kʌh, खा kʰa, खा- kʰa, ठु- ṭʰuk, बठ् bʌṭʰ, स ठ sʌmṭʰ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
