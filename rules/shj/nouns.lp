% rules/shj/nouns.lp
% Caning nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296222: Caning Grammar Book (2014), pages 14, 15, 22, 24, 43, 59, 60, 62, 65, 77, 83
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ax_type                      ax, tizäs
%   azaf_type                    azaf
%   kalag_type                   käläg
%   pen_type                     pen
%   bac_type                     bac
%   bul_type                     bul
%   nyang_type                   nyang, ꞌderem
%   op_type                      op
%   ayis_type                    ayis
%   marany_type                  marany
%   sad_type                     sad
%   sala_type                    salä, nyara
%   sud_type                     sud
%   ya_type                      ya
%   amkadad_type                 amkadad
%   banyag_type                  banyag
%   gaw_type                     gaw
%   kuc_type                     kuc
%   nyibar_type                  nyibär
%   tisi_type                    tisi
%   apaxtic_type                 apaxtic
%   culudwic_type                culudwic
%   kadubax_type                 kädubäx
%   luku_type                    luku
%   mege_type                    mege
%   abad_type                    abad, säxäd
%   eg_type                      eg, tug
%   led_type                     led
%   apaxtictic_type              apaxtictic
%   kodog_type                   koꞌdog
%   ligid_type                   ligid
%   ngondow_type                 ngondow, wolong
%   xong_type                    xong
%   apargenwec_type              apärgenwec
%   axsic_type                   axsic
%   axsicic_type                 axsicic
%   bebecc_type                  bebecc
%   budurug_type                 budurug
%   bung_type                    bung
%   cilax_type                   ciläx
%   dalwec_type                  dälwec
%   ganggaxuwicic_type           ganggaxuwicic
%   gulonggulong_type            gulonggulong
%   galdic_type                  gäldic
%   kajikay_type                 kajikay
%   kayudic_type                 kayudic
%   kindarag_type                kindarag
%   kidicc_type                  kiꞌdicc
%   kogoldicdic_type             kogoldicdic
%   kubunduwicic_type            kubunduwicic
%   kubutic_type                 kubutic
%   kulic_type                   kulic
%   kunyudd_type                 kunyudd
%   kadataxowic_type             kädataxowic
%   lugucc_type                  lugucc
%   x_x                          läg — grammar: "X/X"
%   manycel_type                 manycel
%   marinyang_type               marinyang
%   noun                         mem — grammar: "-/noun"
%   ndukurudicc_type             ndukurudicc
%   ngalwec_type                 ngalwec
%   nimicc_type                  nimicc
%   noun_2                       nyaxay — grammar: "-/noun"
%   nyipoxkicc_type              nyipoxkicc
%   ongad_type                   ongäd
%   x_x_2                        oranyca — grammar: "X/X"
%   oxtic_type                   oxtic
%   piduwic_type                 piduwic
%   pisow_type                   pisow
%   x_x_3                        purupuru — grammar: "X/X"
%   pax_type                     päx
%   rap_type                     rap
%   rejicc_type                  rejicc
%   noun_3                       säpär — grammar: "-/noun"
%   sapartic_type                säpärtic
%   tas_type                     tas
%   timinggarwec_type            timinggarwec
%   x_x_4                        tumsagu — grammar: "X/X"
%   turkas_type                  turkas
%   wec_type                     wec
%   wejuwicic_type               wejuwicic
%   zidd_type                    zidd
%   zakatas_type                 zäkatas
%   d_nu_nouns                   ꞌdawudd — grammar: "-d/-nu nouns"
%   dax_type                     ꞌdax
%   d_nu_nouns_2                 ꞌdämädd — grammar: "-d/-nu nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
