% rules/tgl/adjectives.lp
% Tagalog adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626727: A Tagalog Reference Grammar (1972), pages 106, 107, 109, 131, 250
%   doc 843405: A Systemic Functional Grammar of Tagalog (2025), pages 123
%   doc 896507: Nueva gramática Hispano-Tagala: minuciosamente escrita con arreglo al uso común y de los m (n.d.), pages 20, 28, 54, 59, 60, 83, 93, 95, 96, 97, 99, 101, 102, 103, 109, 112, 113, 116, 131, 135, 149
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ma_adjectives                maayos — grammar: "ma- adjectives"
%   ma_adjectives_2              mabagal — grammar: "ma- adjectives"
%   ma_adjectives_3              mabuti — grammar: "ma- adjectives"
%   adjetivos_compuestos         madiláw — grammar: "Adjetivos compuestos"
%   ma_adjectives_4              maganda — grammar: "ma- adjectives"
%   adjetivos_compuestos_2       maitím — grammar: "Adjetivos compuestos"
%   ma_adjectives_5              malaki — grammar: "ma- adjectives"
%   ma_adjectives_6              maliit — grammar: "ma- adjectives"
%   ma_adjectives_7              maswerte — grammar: "ma- adjectives"
%   adjetivos_compuestos_3       matibay — grammar: "Adjetivos compuestos"
%   ma_adjectives_8              matyaga — grammar: "ma- adjectives"
%   ma_adjectives_9              mayaman — grammar: "ma- adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
