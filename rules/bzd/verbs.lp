% rules/bzd/verbs.lp
% Bribri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38034: Gramática de la lengua bribri (2018), pages 62, 130, 156, 166
%   doc 38035: Se'ẽ yawö bribri wa: Aprendemos la lengua bribri (n.d.), pages 16, 17
%   doc 38050: Se' ttö bribri ie: Hablemos en bribri (2013), pages 22
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   estativos_existenciales_posicionales ar — grammar: "Estativos/existenciales posicionales"
%   estativos_existenciales_posicionales_2 batsul — grammar: "Estativos/existenciales posicionales"
%   estativos_existenciales_posicionales_3 dur — grammar: "Estativos/existenciales posicionales"
%   estativos_existenciales_posicionales_4 tër — grammar: "Estativos/existenciales posicionales"
%   estativos_existenciales_posicionales_5 tërkã — grammar: "Estativos/existenciales posicionales"
%   estativos_existenciales_posicionales_6 tẽn — grammar: "Estativos/existenciales posicionales"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
