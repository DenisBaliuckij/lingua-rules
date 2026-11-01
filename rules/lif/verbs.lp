% rules/lif/verbs.lp
% Limbu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71793: A Descriptive Grammar of Chhatthare Limbu (2007), pages 51, 119, 129, 130, 138, 139, 142, 143, 147, 148, 163, 197, 221, 263
%   doc 74696: A Grammar of Limbu (1987), pages 53, 191, 217, 218, 219, 220, 418
%   doc 74703: Concise Limbu Grammar and Dictionary (n.d.), pages 100, 173, 197, 200, 208, 218, 222, 225, 232
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kusum_txma_type              kusum-txma
%   hipsi_type                   hipsi
%   ha_ma_type                   ha?ma
%   se_ma_type                   se-ma
%   su_ma_type                   su-ma
%   intransitive_verb            im — grammar: "intransitive verb"
%   yuks_type                    yuks
%   hipma_type                   hipma
%   hu_ma_type                   hu?ma?
%   po_ma_type                   po-ma
%   active_complex_transitive_agreement hippa? — grammar: "active (complex transitive agreement)"
%   nima_type                    nima?
%   phctma_type                  phctma?, sapma?
%   po_ma_type_2                 pΗo-ma
%   thuqma_type                  thuqma?
%   abir_type                    abir
%   medio_passive                khcma — grammar: "medio-passive"
%   mcdhukka_type                mcdhukka?
%   hu_siqma_type                hu?siQma?
%   warumsioma_type              warumsioma?
% Irregular (listed in data/verbs.exceptions.tsv): tama?
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
