% rules/mtc/verbs.lp
% Wichi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 49741: Wichi Lhomtes: Estudio de la gramática y la interacción fonología-morfología-sintaxis-semá (2014), pages 190, 251, 266
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kon_type                     kon
%   potsin_type                  potsin
%   wen_type                     w’en
%   y_en_type                    y-en
%   y_aj_type                    y-’aj
% Irregular (listed in data/verbs.exceptions.tsv): yik
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
