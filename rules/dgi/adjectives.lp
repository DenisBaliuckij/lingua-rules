% rules/dgi/adjectives.lp
% Dagaare adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38769: Collected Language Notes on Dagaare Grammar (2005), pages 46, 47, 51
%   doc 841825: A dictionary and grammatical sketch of Dagaare (2021), pages 28, 37, 255
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gender_6                     biraa — grammar: "Gender 6"
%   gender_6_2                   daraa — grammar: "Gender 6"
%   gender_6_3                   diraa — grammar: "Gender 6"
%   gender_7                     kpor] — grammar: "Gender 7"
%   gender_6_4                   piiaa — grammar: "Gender 6"
%   r_maa_type                   r]maa
%   gender_7_2                   sur] — grammar: "Gender 7"
%   gender_6_5                   tagi — grammar: "Gender 6"
%   gender_6_6                   tsgraa — grammar: "Gender 6"
%   gender_6_7                   vilaa — grammar: "Gender 6"
%   gender_2                     zie — grammar: "Gender 2"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
