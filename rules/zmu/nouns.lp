% rules/zmu/nouns.lp
% Muruwari nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73684: The Muruwari Language (1988), pages 78, 114, 124, 128, 129, 132, 137, 142
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   case_nouns                   mayi — grammar: "case nouns"
%   case_nouns_2                 mathan — grammar: "case nouns"
%   case_nouns_3                 mayinj — grammar: "case nouns"
%   case_nouns_4                 yukanh — grammar: "case nouns"
%   case_nouns_5                 kuntarl — grammar: "case nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
