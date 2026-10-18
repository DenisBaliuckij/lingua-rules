% rules/gii/adjectives.lp
% Girirra adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 10016: The Grammar of Girirra (A Lowland East Cushitic Language of Ethiopia) (2015), pages 82, 83, 136, 145, 146, 151, 155, 158, 160, 169, 170, 205, 221, 222, 224
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bahan_type                   bahan
%   mudowu_type                  mudowu
%   guduud_type                  guduud
%   taajir_type                  taajir
%   tikan_type                   tik’an
%   eer_type                     ɗeer
%   aadeeg_type                  aadeeg
%   adag_type                    adag
%   gaab_type                    gaab
%   kaaar_type                   k’aɲaar
%   taair_type                   taaʤir
%   wiin_type                    wiin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
