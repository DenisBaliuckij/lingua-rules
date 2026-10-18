% rules/tig/nouns.lp
% Tigre nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15342: The Tigre Language of Gindaʿ, Eritrea: Short Grammar and Texts (2014), pages 50, 79, 86, 108, 126
%   doc 15343: The Morphology of the Tigre Noun (1962), pages 22, 34, 35, 38, 39, 40, 41, 42, 43, 73, 74, 80, 81, 82, 83
%   doc 15347: Tigre Grammar and Texts (1983), pages 35, 36, 41, 44, 45, 47, 53, 54, 63, 64, 65, 67, 68, 70, 71, 145, 147, 148, 149, 152
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nouns_ending_in_a_dental_or_alveolar_con ra'asse — grammar: "NOUNS ENDING IN A DENTAL OR ALVEOLAR CONSONANT"
%   nouns_ending_in_the_vowel_a  moraye — grammar: "NOUNS ENDING IN THE VOWEL a"
%   bdlen_type                   bdlen, hdbds, hdmdsen
%   dnthara_type                 dnthara
%   mdnsa_type                   mdnsa
%   the_three_nouns_af_mouth_ham_father_in_l ^ye — grammar: "THE THREE NOUNS: °af "MOUTH"; ham "FATHER-IN-LAW"; >ab"FATHER""
%   xx_4                         agar — grammar: "XX (4)"
%   xi_2                         aquq — grammar: "XI (2)"
%   cdgdr_type                   cdgdr
%   xix                          dagge — grammar: "XIX"
%   xviii                        dakka — grammar: "XVIII"
%   xix_2                        ddbela — grammar: "XIX"
%   ddllalebay_type              ddllalebay
%   c2                           dnsay — grammar: "(2)"
%   xvii                         drwe — grammar: "XVII"
%   dskdr_type                   dskdr
%   xviii_2                      ela — grammar: "XVIII"
%   xii_3                        farms — grammar: "XII (3)"
%   xvi                          fdndot — grammar: "XVI"
%   xviii_3                      hammdm — grammar: "XVIII"
%   xviii_4                      handi — grammar: "XVIII"
%   hmagdlle_type                hmagdlle
%   ingliz_type                  ingliz
%   xix_3                        karbit — grammar: "XIX"
%   xviii_5                      kddbet — grammar: "XVIII"
%   xi_3                         kokdb — grammar: "XI (3)"
%   xviii_6                      korit — grammar: "XVIII"
%   xvi_2                        ma'tay — grammar: "XVI (2)"
%   xix_4                        magda — grammar: "XIX"
%   mdbdl_type                   mdbdl
%   xvii_2                       mdmba — grammar: "XVII"
%   xi_1                         mdsori — grammar: "XI (1)"
%   xiv_3                        mezan — grammar: "XIV (3)"
%   xix_5                        ndbra — grammar: "XIX"
%   xxi_i                        ndgus — grammar: "XXI (i)"
%   xix_6                        qalfi — grammar: "XIX"
%   qaror_type                   qaror
%   xviii_7                      qdrso — grammar: "XVIII"
%   xi_1_2                       qoba — grammar: "XI (1)"
%   xvi_3                        sdgla — grammar: "XVI"
%   c1                           sdmuy — grammar: "(1)"
%   xix_7                        sdqdla — grammar: "XIX"
%   sdqqatebay_type              sdqqatebay
%   xi_1_3                       sdrerdtj — grammar: "XI (1)"
%   xix_8                        sdrgo — grammar: "XIX"
%   c1_2                         so — grammar: "(1)"
%   xvi_4                        soldi — grammar: "XVI"
%   xviii_8                      tdgrat — grammar: "XVIII"
%   xi_1_4                       tdkobdt — grammar: "XI (1)"
%   xi                           tikas — grammar: "XI"
%   tilan_type                   tilan
%   xi_4                         wahiz — grammar: "XI (4)"
%   xvi_5                        wdgre — grammar: "XVI"
%   xvii_3                       wdreza — grammar: "XVII"
%   zdbdd_type                   zdbdd
% Irregular (listed in data/nouns.exceptions.tsv): ddllal, faytdt, ga, mabrahat, mdnfa'at, talit, wdlat
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
