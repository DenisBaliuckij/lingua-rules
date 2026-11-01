% rules/zpm/verbs.lp
% Zapoteco de Mixtepec verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16616: A Sketch of Mixtepec Zapotec Grammar (n.d.), pages 14, 15
%   doc 389289: Un Esbozo de la Gramática del Zapoteco de los Pueblos Mixtepec, Oaxaca, México (n.d.), pages 10, 16, 17
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dar_type                     dar
%   clase_iii                    oír — grammar: "clase III"
%   clase_iii_2                  ver — grammar: "clase III"
% Irregular (listed in data/verbs.exceptions.tsv): cansarse, rcǎ, rzàc, rǎ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
