% rules/kng/nouns.lp
% Kikongo (Kisolongo dialect) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 830449: Gramática da língua do Congo (kikongo) : dialecto kisolongo (1870), pages 32, 33, 56, 58, 70, 74, 75, 76, 77, 84, 85, 86, 89, 90, 92, 125
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   classe_4_o_di                diaia — grammar: "classe 4.º (di-)"
%   classe_4_o_di_2              dienu — grammar: "classe 4.º (di-)"
%   classe_4_o_di_3              diinu — grammar: "classe 4.º (di-)"
%   classe_4_o_di_4              dinkonde — grammar: "classe 4.º (di-)"
%   classe_4_o_di_5              disu — grammar: "classe 4.º (di-)"
%   classe_4_o_di_6              divitu — grammar: "classe 4.º (di-)"
%   classe_3_o_ki                kikada — grammar: "classe 3.º (ki-)"
%   classe_3_o_ki_2              kinguadi — grammar: "classe 3.º (ki-)"
%   classe_3_o_ki_3              kini — grammar: "classe 3.º (ki-)"
%   classe_3_o_ki_4              kinku — grammar: "classe 3.º (ki-)"
%   classe_3_o_ki_5              kinkutu — grammar: "classe 3.º (ki-)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
