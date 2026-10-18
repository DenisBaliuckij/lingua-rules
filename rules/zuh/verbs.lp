% rules/zuh/verbs.lp
% Tokano verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23879: Ensayo de Gramática Dagseje o Tokano (1921), pages 20, 22, 23, 24
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   darase_type                  darase
%   indicacion_de_lagar_absente_futuro_simpl daragesaa — grammar: "Indicacion de lagar absente. Futuro. Simple y Indefinido."
%   indicacion_de_lagar_absente_presente_sim darasaa — grammar: "Indicacion de lagar absente. Presente. Simple."
%   indicacion_de_duda_presente_simple darasasaa — grammar: "Indicacion de duda. Presente. Simple."
%   indicacion_de_lagar_absente_futuro_exelu darasabr — grammar: "Indicacion de lagar absente. Futuro. Exelusa."
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
