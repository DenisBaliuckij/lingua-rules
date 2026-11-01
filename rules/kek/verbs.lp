% rules/kek/verbs.lp
% Q'eqchi' verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41268: Q'eqchi' Grammar (2015), pages 50, 59, 60, 62, 64, 69, 70, 71, 72, 78, 79, 80, 139
%   doc 93679: Gramática descriptiva del idioma maya Q'eqchi' (2003), pages 41, 44, 45, 63, 64, 65, 66
%   doc 93681: Xtuslal Xchaq’rab’il li aatinob’aal Q’eqchi’ (Gramática Normativa) (2022), pages 27, 39, 61, 62, 65, 92
%   doc 389886: K’EQCHI GRAMMAR: An Introduction (2010), pages 20, 30, 31, 32, 33, 35, 36
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   il_type                      il
%   transitive_stems_with_optative_imperativ b'oq — grammar: "transitive stems with optative/imperative allomorphs"
%   boq_type                     b’oq
%   xik_type                     xik
%   vir                          yajer — grammar: "vir"
%   bak_type                     b’ak
%   tijok_type                   tijok, purruk, raök, t'anok ...
%   ab_i_type                    ab'i
%   intransitive_stems_with_optative_imperat war — grammar: "intransitive stems with optative imperative allomorphs, chi- and Ø"
%   atin_type                    atin
%   chiilaak_type                ch’iilaak
%   b_atz_un_type                b'atz'un
%   beek_type                    b’eek
%   eek_a_type                   eek'a
%   vir_imperatives_with_aq_optative kam — grammar: "viR imperatives with -aq (optative)"
%   loq_type                     loq
%   loqok_type                   loq’ok
%   sak_type                     sak
%   wark_type                    wark
%   waak_type                    wa’ak
%   warq_type                    warq
%   class_vi                     josq — grammar: "Class vi’"
%   class_viv                    kalaa — grammar: "Class viV"
%   vib                          karab — grammar: "vib'"
%   class_viv_2                  kub'ee — grammar: "Class viV"
%   class_vi_2                   nume — grammar: "Class vi’"
%   class_vik                    se'e — grammar: "Class vik"
%   class_viv_3                  ch'iilaa — grammar: "Class viV"
%   chap_type                    chap
%   class_vin                    k'ulun — grammar: "Class vin"
%   kamsihaq_type                kamsihaq
%   nimobresink_type             nimobresīnk, ochbenīnk, osobtesīnk, pucasīnk ...
%   nink_ehink_type              nink'ehīnk, oshlok'īnk, oybenīnk
%   oybenihaq_type               oyb’enihaq
%   pab_aank_type                pab'aank, pajiink, paqoonk, pic'aank ...
%   perrebank_type               perrebānk, pumubānk, t'anabānk, t'urubānk ...
%   picok_type                   picok
%   pisc_oonk_type               pisc'oonk, pubaank
%   tamok_type                   tamok, tenok, tiqok
%   teok_type                    teök
%   tic_tiink_type               tic'tîink
%   toch_ok_type                 toch'ok
%   tubaank_type                 tubaank
%   tutzubank_type               tutz’ubānk
%   class_vi_3                   b'oqe — grammar: "Class vi’"
%   c_opok_type                  c'opok
%   c_opink_type                 c'opīnk
%   c_oshlaank_type              c'oshlaank
%   c_osok_type                  c'osok
%   c_otaank_type                c'otaank
%   c_ukuk_type                  c'ukuk
%   c_ulaank_type                c'ulaank
%   c_utuk_type                  c'utuk
%   vtd_stems                    ch'iila — grammar: "vtD stems"
%   colonink_type                colonīnk
%   cotobank_type                cotobānk
%   cotzok_type                  cotzok
%   cuaank_type                  cuaank
%   cuaclesink_type              cuaclesīnk
%   cuajbaank_type               cuajbaank
%   cualuunk_type                cualuunk
%   cuartesink_type              cuartesīnk
%   cuaok_type                   cuaök
%   cubsiink_type                cubsiink
%   cuosok_type                  cuosok
%   curruk_type                  curruk
%   cutubank_type                cutubānk
%   cutuk_type                   cutuk
%   cuatesink_type               cuâtesīnk
%   cuobaank_type                cuöbaank
%   ec_asink_type                ec'asīnk
%   echanink_type                echanīnk
%   elk_aank_type                elk'aank
%   elk_eink_type                elk'eīnk
%   etaank_type                  etaank
%   etz_uunk_type                etz'uunk
%   habok_type                   habök
%   hach_ok_type                 hach'ok
%   hamok_type                   hamok
%   hasbaank_type                hasbaank
%   hellok_type                  hellok
%   hiltasink_type               hiltasīnk
%   hirrok_type                  hirrok
%   hitok_type                   hitok
%   hobok_type                   hobok
%   homok_type                   homok
%   hopok_type                   hopok
%   hoybaank_type                hoybaank
%   hupubank_type                hupubānk
%   halesink_type                hâlesīnk
%   iqaank_type                  iqaank
%   ishqenink_type               ishqenīnk
%   it_ok_type                   it'ok
%   jilibank_type                jilibānk
%   jilok_type                   jilok
%   josk_obresink_type           josk'obresīnk
%   jucuunk_type                 jucuunk
%   jook_type                    jöok
%   k_abaink_type                k'abaīnk
%   k_ehiink_type                k'ehiink
%   k_etok_type                  k'etok
%   k_ilaank_type                k'iläank
%   k_ishbaank_type              k'ishbaank
%   k_ishnaank_type              k'ishnaank
%   k_ochok_type                 k'ochok
%   k_olok_type                  k'olok
%   k_otok_type                  k'otok
%   k_usuk_type                  k'usuk
%   kachok_type                  kachok
%   kehobresink_type             kehobresīnk
%   keloonk_type                 keloonk
%   kemok_type                   kemok
%   kishok_type                  kishok
%   kitzok_type                  kitz’ok
%   lak_abank_type               lak'abānk
%   lanok_type                   lanok
%   lapok_type                   lapok
%   latz_aank_type               latz'aank
%   lecok_type                   lecok
%   lepok_type                   lepok
%   letzok_type                  letzok
%   lik_ok_type                  lik'ok
%   lochok_type                  lochok
%   lochteenk_type               lochtêenk
%   lok_ok_type                  lok'ok
%   lubtesink_type               lubtesīnk
%   lucubank_type                lucubānk
%   luhobresink_type             luhobresīnk
%   mak_ok_type                  mak'ok
%   matanink_type                matanīnk
%   matc_eenk_type               matc'eenk
%   matyajank_type               matyajank
%   mausilank_type               mausilānk
%   mayibk_type                  mayibk
%   memobresink_type             memobresīnk
%   mesuunk_type                 mesuunk
%   metz_ecuank_type             metz'ecuānk
%   mich_ok_type                 mich'ok
%   minok_type                   minok
%   mochobank_type               mochobānk
%   much_uk_type                 much'uk
%   muquk_type                   muquk
%   mushuk_type                  mushuk
%   musik_ank_type               musik'ānk
%   nawok_type                   nawök
%   nimaank_type                 nimaank
%   nuk_uk_type                  nuk'uk
%   numsiink_type                numsiink
%   nalebank_type                nâlebānk
%   pajok_type                   pajok
%   pak_ok_type                  pak'ok
%   patz_ok_type                 patz'ok
%   payok_type                   payok
%   pech_ok_type                 pech'ok
%   pechok_type                  pechok
%   pejok_type                   pejok
%   pek_ok_type                  pek'ok
%   puc_uk_type                  puc'uk
%   puk_uk_type                  puk'uk
%   puquk_type                   puquk
%   pushink_type                 pushīnk
%   putz_uk_type                 putz'uk
%   pook_type                    pôok
%   rapok_type                   rapok
%   raqok_type                   raqok
%   tyabasink_type               tyabasīnk
%   tyamok_type                  tyamok
%   tyamtesink_type              tyamtesīnk
%   tyatz_ok_type                tyatz'ok
%   tyechiink_type               tyechîīnk
%   tyehok_type                  tyehok
%   tyibaank_type                tyibaank
%   tyocbaank_type               tyocbaank
%   tyocobank_type               tyocobānk
%   tyocosink_type               tyocosīnk
%   tyeok_type                   tyêok
%   tyoleenk_type                tyôleenk
%   tyoonink_type                tyôonīnk
%   tyuuk_type                   tyûuk
%   tz_eqtanank_type             tz'eqtanānk
%   tz_ibak_type                 tz'ibak
%   tz_obok_type                 tz'obok
%   tzolobank_type               tzolobānk
%   uc_tasink_type               uc'tasīnk
%   uk_miink_type                uk'miink
%   ulaank_type                  ulâank
%   ushtanank_type               ushtanānk
%   xjalaq_type                  xjalaq
% Irregular (listed in data/verbs.exceptions.tsv): b’ak’b
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
