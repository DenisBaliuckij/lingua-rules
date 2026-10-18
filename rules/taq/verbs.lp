% rules/taq/verbs.lp
% Tamasheq verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626235: A Grammar of Tamashek (Tuareg of Mali) (2013), pages 219, 225, 231, 232, 255, 338
%   doc 839243: The Tamasheq of North-East Burkina Faso: Notes on Grammar and Syntax including a Key Vocab (2011), pages 116
%   doc 854043: Essai de grammaire de la langue tamachek' (1860), pages 93, 95, 119, 122
%   doc 854045: Essai de grammaire de la langue Tamachek, renfermant les principes du langage parlé par le (1860), pages 93, 95, 99, 119, 122
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ellir_type                   ellir
%   el_type                      el
%   lmad_type                    ǝlmăd
%   ilkem_type                   ilkem
%   abdu_type                    abdu
%   addal_type                   addal
%   adhi_type                    adhi
%   aebsi_type                   aebsi
%   aemmaet_type                 aemmaet
%   aknas_type                   aknas
%   amal_type                    amal, awad, azlay
%   anfu_type                    anfu
%   ardu_type                    ardu
%   asswi_type                   asswi
%   idu_type                     idu
%   iwi_type                     iwi
%   aejli_type                   aejli
%   aekni_type                   aekni
% Irregular (listed in data/verbs.exceptions.tsv): il el
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
