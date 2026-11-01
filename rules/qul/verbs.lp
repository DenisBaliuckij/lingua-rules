% rules/qul/verbs.lp
% Quechua (Bolivian) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388899: Método de Quechua: Runasimi (1980), pages 16, 26, 38, 40, 43, 46, 50, 79, 83, 94, 95, 96, 98, 100, 123, 149
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   parla_type                   parla
%   parlay_type                  parlay
%   parlasqayki_type             parlasqayki
%   muna_type                    muna
%   jamu_type                    jamu
%   parlani_type                 parlani
%   parlarqani_type              parlarqani
%   parlarqayki_type             parlarqayki
%   parlasaj_type                parlasaj
%   parlasonqa_type              parlasonqa
%   parlasorqa_type              parlasorqa
%   parlasqani_type              parlasqani
%   parlasunki_type              parlasunki
%   parlasusqa_type              parlasusqa
%   parlayki_type                parlayki
%   apasana_type                 apaSana
%   yachaka_type                 yachaka
%   apamu_type                   apamu
%   potencial_simple_forma_pronominal jamu-y — grammar: "POTENCIAL SIMPLE: FORMA PRONOMINAL"
%   niy_type                     niy
%   wajya_type                   wajya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
