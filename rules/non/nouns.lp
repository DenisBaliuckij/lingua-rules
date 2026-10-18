% rules/non/nouns.lp
% Old Norse nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388602: A New Introduction to Old Norse: Part I - Grammar (2008), pages 59, 61, 63, 73, 75, 77, 79, 116, 123, 130, 185, 186, 187, 188, 189
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   weak_masculine_other_pattern eigandi — grammar: "Weak masculine (other pattern)"
%   strong_masculine_basic_pattern hestr — grammar: "Strong masculine (basic pattern)"
%   strong_feminine_basic_pattern hlí› — grammar: "Strong feminine (basic pattern)"
%   strong_feminine_other_patterns kerling — grammar: "Strong feminine (other patterns)"
%   strong_feminine_basic_pattern_2 kú — grammar: "Strong feminine (basic pattern)"
%   strong_feminine_basic_pattern_3 laug — grammar: "Strong feminine (basic pattern)"
%   strong_feminine_basic_pattern_4 mƒn — grammar: "Strong feminine (basic pattern)"
%   strong_neuter_basic_pattern  orð — grammar: "Strong neuter (basic pattern)"
%   strong_masculine_basic_pattern_2 sta›r — grammar: "Strong masculine (basic pattern)"
%   weak_feminine_other_pattern  reiði — grammar: "Weak feminine (other pattern)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
