% rules/apc/nouns.lp
% Levantine Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289547: A Grammar of Jordanian Arabic (n.d.), pages 239
%   doc 626778: Colloquial Arabic (Levantine): The Complete Course for Beginners (2014), pages 120, 150, 151
%   doc 627310: 'Arabiyyat al-Naas (Part Three): An Advanced Course in Arabic (2014), pages 75
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_type                   أب, أخ
%   alf_type                     alf
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
