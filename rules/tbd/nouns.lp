% rules/tbd/nouns.lp
% Kaki Ae nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22852: Some Endangered Languages of Papua New Guinea: Kaki Ae, Musom, and Aribwatsa (1997), pages 43, 44, 45
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kinship_terms                ahara — grammar: "kinship terms"
%   mass_nouns                   aime — grammar: "mass nouns"
%   inanimate_nouns              aiparo — grammar: "inanimate nouns"
%   animate_nouns                am — grammar: "animate nouns"
%   kinship_terms_2              anaure — grammar: "kinship terms"
%   mass_nouns_2                 ara'a — grammar: "mass nouns"
%   animate_nouns_2              aruii'u — grammar: "animate nouns"
%   inanimate_nouns_2            evera — grammar: "inanimate nouns"
%   animate_nouns_3              i'u — grammar: "animate nouns"
%   inanimate_nouns_3            mini — grammar: "inanimate nouns"
%   inanimate_nouns_4            nane — grammar: "inanimate nouns"
%   kinship_terms_3              naora — grammar: "kinship terms"
%   kinship_terms_4              napara — grammar: "kinship terms"
%   kinship_terms_5              nomara — grammar: "kinship terms"
%   kinship_terms_6              onera — grammar: "kinship terms"
% Irregular (listed in data/nouns.exceptions.tsv): aua, mono, muru
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
