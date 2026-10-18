% rules/pnb/adjectives.lp
% Western Panjabi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 905975: Grammar and Dictionary of Western Panjabi as Spoken in the Shahpur District with Proverbs, (1898), pages 16, 17, 21, 22, 24, 28, 29, 54, 58, 59, 60, 61
%   doc 924603: Grammar and Dictionary of Western Panjabi, as spoken in the Shahpur District, with Proverb (1898), pages 22, 23, 25, 54, 59, 60, 61, 62
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
% Irregular (listed in data/adjectives.exceptions.tsv): habba
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
