% rules/mid/nouns.lp
% Neo-Mandaic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41569: The Neo-Mandaic Dialect of Khorramshahr (2014), pages 109, 159, 160, 189, 211, 214, 215, 218, 219, 223, 224, 226, 233, 235, 238, 239, 248, 249
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   bie_a_type                   bie×-Á
%   darwis_type                  darwiš
%   dest_a_type                  dešt-Á
%   hewan_a_type                 hewÁn-Á
%   jihel_type                   jihel
%   keda_a_type                  kĕdÁΩ-Á
%   keray_a_type                 kĕrÁy-Á
%   nesem_t_a_type               nešem-t-Á
%   rafieq_type                  rafieq
%   rezq_type                    rezq
%   tarmid_a_type                tarmid-Á
%   tur_t_a_type                 tur-t-Á
%   tur_a_type                   tur-Á
%   wazir_type                   wazir
%   oubbi_type                   Òubbi
%   cang_type                    čang
% Irregular (listed in data/nouns.exceptions.tsv): bĕra-tt-Á, e××-Á, gaΩr-Á, hÁ×-Á, turt-Á
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
