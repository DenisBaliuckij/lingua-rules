% rules/pl/verbs.lp
% Polish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22986: Polish: An Essential Grammar (2014), pages 53, 71, 76, 79, 81, 87, 106, 146, 157, 158, 246, 248, 396, 397, 398, 399, 400, 401, 402, 403, 404, 408, 414, 417, 419, 423, 425
%   doc 388455: A Grammar of Contemporary Polish (2002), pages 58, 61, 88, 98, 102, 103, 104, 118, 120, 121, 123, 231, 232, 241, 242, 243, 252, 253, 254, 256, 325, 326, 327
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   first_conjugation            zajmować, jechać, brać, dokonywać ... — grammar: "First Conjugation"
%   first_conjugation_2          chcieć, mdleć, chrzciç, czciç ... — grammar: "First Conjugation"
%   zajmowac_type                zajmowaç
%   byc_type                     być
%   napisac_type                 napisaç, pisaç
%   niesc_type                   nieść
%   second_conjugation           jeêdziç, kupiç, spaç, staç ... — grammar: "Second Conjugation"
%   c1st_conjugation             pić, myć, czuć, kuleć ... — grammar: "1st conjugation"
%   musiec_type                  musieć
%   conjugation_3d_verbs_end_in_ac_and_nac ciągnąć, płynąć, stanąć, ginąć ... — grammar: "Conjugation 3d verbs end in -ąć and -nąć"
%   second_conjugation_2         le˝eç, woleç, zapomnieç — grammar: "Second Conjugation"
%   stac_type                    stać
%   isc_type                     iść
%   verbs_in_yc                  chodzić, kończyć, liczyć, grozić ... — grammar: "Verbs in -yć"
%   conjugation_4b_e_i_a         nosić, jeździć, poprosić — grammar: "Conjugation 4b: ę, i, ą"
%   wozic_type                   wozić
%   biegnac_type                 biegnąć
%   krasc_type                   kraść, upaść
%   c2nd_conjugation             kąpać, łamać, łapać, chwalić ... — grammar: "2nd conjugation"
%   lac_type                     lać
%   verbs_in_ec_conjugated_as_verbs_in_yc leżeć, patrzeć, drżeć, krzyczeć ... — grammar: "Verbs in -eć conjugated as verbs in -yć"
%   conjugation_4b_e_i_a_2       myśleć — grammar: "Conjugation 4b: ę, i, ą"
%   pisac_type                   pisać, karać
%   verbs_in_ec_conjugated_as_verbs_in_ic siedzieć, widzieć — grammar: "Verbs in -eć conjugated as verbs in -ić"
%   kasc_type                    kłaść
%   wiezc_type                   wieźć
%   gryec_type                   gryêç
%   marznac_type                 marznàç, zniknàç
%   nieec_type                   nieÊç
%   paec_type                    paÊç
%   piec_type                    piec
%   pleec_type                   pleÊç
%   fourth_conjugation_verbs_present_tense robić, lubić, martwić, mówić ... — grammar: "Fourth conjugation verbs – present tense"
%   bywac_type                   bywać
%   conjugation_4b_e_i_a_3       czyścić — grammar: "Conjugation 4b: ę, i, ą"
%   first_conjugation_3          dzieć — grammar: "First Conjugation"
%   conjugation_3e_e_e_a         gnieść — grammar: "Conjugation 3e: ę, e, ą"
%   conjugation_4b_e_i_a_4       kleić, kroić — grammar: "Conjugation 4b: ę, i, ą"
%   kamac_type                   kłamać
%   verbs_in_ec_conjugated_as_verbs_in_ic_2 lecieć — grammar: "Verbs in -eć conjugated as verbs in -ić"
%   first_conjugation_4          mazać — grammar: "First Conjugation"
%   moc_type                     móc
%   conjugation_4b_e_i_a_5       prosić — grammar: "Conjugation 4b: ę, i, ą"
%   t_stems                      rzucić — grammar: "t-stems"
%   skakac_type                  skakać
%   j_stems                      stroić, uspokoić — grammar: "j-stems"
%   uciec_type                   uciec
%   wi_dnac_type                 wi´dnàç
%   verbs_in_ec_conjugated_as_verbs_in_ic_3 woleć — grammar: "Verbs in -eć conjugated as verbs in -ić"
%   conjugation_3d_verbs_end_in_ac_and_nac_2 zająć — grammar: "Conjugation 3d verbs end in -ąć and -nąć"
%   zamieszkac_type              zamieszkać
%   conjugation_3d_verbs_end_in_ac_and_nac_3 zdjąć — grammar: "Conjugation 3d verbs end in -ąć and -nąć"
%   otworzyc_type                otworzyć
%   pozwolic_type                pozwolić
%   biegnac_type_2               biegnàç
%   brzmiec_type                 brzmieç
%   czytac_type                  czytać, słuchać
%   drzec_type                   drzeç, obejrzeç, wytrzeç
%   dzwonic_type                 dzwonić
%   jeec_type                    jeÊç
%   kraec_type                   kraÊç
%   pomniec_type                 pomnieç
%   pomoc_type                   pomóc
%   posodzic_type                posłodzić
%   powiedziec_type              powiedzieç
%   poozyc_type                  położyć
%   c1st_conjugation_2           pracować — grammar: "1st conjugation"
%   pacic_type                   płacić, wyczyścić
%   studiowac_type               studiować
%   c2nd_conjugation_2           wrócić — grammar: "2nd conjugation"
%   conjugation_3d_verbs_end_in_ac_and_nac_4 wziąć — grammar: "Conjugation 3d verbs end in -ąć and -nąć"
%   zaczac_type                  zaczàç
%   zdejm_type                   zdejm´
%   znalezc_type                 znaleźć
%   c1st_conjugation_3           zostać — grammar: "1st conjugation"
%   moknac_type                  moknąć
%   przyjsc_type                 przyjść
%   pojsc_type                   pójść
%   rodzic_type                  rodzić
%   wejsc_type                   wejść
%   c1st_conjugation_4           wstawać — grammar: "1st conjugation"
%   wyjsc_type                   wyjść
% Irregular (listed in data/verbs.exceptions.tsv): cieszyć się, wziàç, żenić się
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
