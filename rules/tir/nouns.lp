% rules/tir/nouns.lp
% Tigrinya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 103933: Documents Tigrigna (Ethiopien Septentrional): Grammaire et Textes (1941), pages 27, 31, 34, 42, 43, 45, 47, 49, 51, 54, 56, 59, 60, 69
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nombres_ordinaux             EJSrawJy — grammar: "nombres ordinaux"
%   nombres_ordinaux_2           bamsay — grammar: "nombres ordinaux"
%   nombres_ordinaux_3           rabnay — grammar: "nombres ordinaux"
%   nombres_ordinaux_4           sabJwy — grammar: "nombres ordinaux"
%   nombres_ordinaux_5           sadasay — grammar: "nombres ordinaux"
%   nombres_ordinaux_6           sal:Jsay — grammar: "nombres ordinaux"
%   nombres_ordinaux_7           sammay — grammar: "nombres ordinaux"
%   nombres_ordinaux_8           tasJzay — grammar: "nombres ordinaux"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
