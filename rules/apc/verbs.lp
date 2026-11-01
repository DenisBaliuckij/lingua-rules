% rules/apc/verbs.lp
% Levantine Arabic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289547: A Grammar of Jordanian Arabic (n.d.), pages 239
%   doc 626778: Colloquial Arabic (Levantine): The Complete Course for Beginners (2014), pages 120, 150, 151
%   doc 627310: 'Arabiyyat al-Naas (Part Three): An Advanced Course in Arabic (2014), pages 75
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   imperatives                  ktb — grammar: "Imperatives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
