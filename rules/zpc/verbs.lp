% rules/zpc/verbs.lp
% Zapoteco de Comaltepec verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389294: Gramática popular del zapoteco de Comaltepec, Choapan, Oaxaca (2010), pages 42, 92, 93, 94, 101, 179, 180
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   clase_2_inferred_from_context_of_d_t_rep andar — grammar: "clase 2 (inferred from context of d->t replacement)"
%   clase_5                      ir — grammar: "clase 5"
%   clase_3                      morir — grammar: "clase 3"
%   raoro_type                   raoro
%   clase_2_inferred_from_context_of_dy_ch_r resbalar — grammar: "clase 2 (inferred from context of dy->ch replacement)"
%   robar_type                   robar
%   clase_3_2                    dar — grammar: "clase 3"
% Irregular (listed in data/verbs.exceptions.tsv): oír
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
