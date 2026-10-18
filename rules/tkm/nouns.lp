% rules/tkm/nouns.lp
% Takelma nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 65878: Takelma Texts and Grammar (1990), pages 179, 182, 187, 197, 199, 207, 208, 252, 305, 307
%   doc 105867: Elements of the grammar of the English language (1788), pages 122, 125, 126, 133, 140, 141
%   doc 108748: The Takelma language of southwestern Oregon (1909), pages 189, 199, 202, 238, 257, 269
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   terms_of_relationship        Mn — grammar: "terms of relationship"
%   terms_of_relationship_2      heyan — grammar: "terms of relationship"
%   terms_of_relationship_3      Tiam — grammar: "terms of relationship"
%   scheme_ii                    dagax — grammar: "Scheme II"
%   scheme_iii                   dana — grammar: "Scheme III"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
