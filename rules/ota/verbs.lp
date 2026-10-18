% rules/ota/verbs.lp
% Ottoman Turkish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 103494: Grammaire complète de la langue ottomane comprenant les trois éléments turc, persan et ara (1892), pages 166, 195, 196, 197, 198, 200, 203, 205, 208, 209, 210, 211, 212, 213, 214, 215, 254, 256, 257
%   doc 103700: Principj della gramatica Turca ad uso dei missionari apostolici de Constantinopoli (1800), pages 84, 138, 158, 164, 171, 194, 227, 233, 234, 307, 313, 316, 328, 336, 342, 354, 379, 434, 436, 437, 440
%   doc 108590: Grammaire raisonnée de la langue ottomane (1870), pages 71, 72, 73, 210, 211, 213, 214, 257, 260, 268
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   olmak_type                   olmak
%   satmak_type                  satmak
%   sev_type                     sèv
%   kesilmek_type                késilmek
%   dilemek_type                 dilemek
%   jirimek_type                 jirimek
%   sevmek_type                  sèvmek
%   vermek_type                  vermek
%   olajorum_type                olajorum
%   perirmek_type                perirmek
%   sevme_type                   sevme
%   sevmezsem_type               sevmezsem
%   sevmejorsam_type             sèvmejorsam
%   sevmesem_type                sèvmesem
%   ottava                       jaralar — grammar: "ottava"
%   olatridiurn_type             olatridiurn
%   sesta                        jirir — grammar: "sesta"
%   decima                       lazgr — grammar: "decima"
%   vurmak_type                  vurmak
%   kazymek_type                 kazymek
%   kazysam_type                 kazysam
%   kotarmak_type                kotarmak
%   nona                         kotary — grammar: "nona"
%   settima                      an-akarsyr — grammar: "settima"
%   consentir_type               consentir
%   kazyjagha_type               kazyjagha
%   sev_me_mek_type              sèv-mè-mèk
%   imparfait_du_futur_de_necessite_narratif sèv-mèli-yimichim — grammar: "Imparfait du futur de nécessité narratif"
%   passe_narratif               sév-ė-yimichim — grammar: "Passé narratif"
%   verirmek_type                verirmek
% Irregular (listed in data/verbs.exceptions.tsv): kazymys ysain, kotàrağyàgh ysa, otajor udumn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
