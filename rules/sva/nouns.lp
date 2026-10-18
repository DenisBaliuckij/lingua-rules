% rules/sva/nouns.lp
% Svan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9631: A Short Descriptive Grammar of the Svan Language (1998), pages 16, 20
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vii                          kor — grammar: "VII"
%   iii                          ma:re — grammar: "III"
%   vi_vowel_stem                næ:ti — grammar: "VI [vowel stem]"
%   vi_consonant_stem            qæn — grammar: "VI [consonant stem]"
%   viii_all_plurals             txum-ær — grammar: "VIII [all plurals]"
%   v                            txwim — grammar: "V"
%   proper_names                 æmiran — grammar: "[proper names]"
%   iv                           ™æ:¢ — grammar: "IV"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
