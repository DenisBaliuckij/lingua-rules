% rules/cym/nouns.lp
% Welsh nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389200: A Welsh Grammar (1980), pages 17, 22, 24, 25, 26, 34, 36, 37, 38, 56, 88, 89, 96, 97, 98, 99, 100, 101, 109, 111, 112, 113, 114, 115, 116, 168
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ffrancwr_type                Ffrancwr
%   groegwr_type                 Groegwr
%   gwyddel_type                 Gwyddel
%   ach_type                     ach
%   amser_type                   amser
%   arf_type                     arf
%   asen_type                    asen
%   awdur_type                   awdur
%   bachgen_type                 bachgen
%   vowel_change_a_becomes_ei    bardd — grammar: "vowel change: a becomes ei"
%   blodeuyn_type                blodeuyn
%   brawd_type                   brawd
%   bron_type                    bron
%   vowel_change_a_becomes_ai    brân — grammar: "vowel change: a becomes ai"
%   vowel_change_a_becomes_y_clear bustach — grammar: "vowel change: a becomes y (clear)"
%   cacynen_type                 cacynen
%   caer_type                    caer
%   canhwyllbren_type            canhwyllbren
%   canon_type                   canon
%   vowel_change_a_becomes_ei_2  car — grammar: "vowel change: a becomes ei"
%   cardotyn_type                cardotyn
%   cariad_type                  cariad
%   carreg_type                  carreg
%   vowel_change_a_becomes_ei_3  carw — grammar: "vowel change: a becomes ei"
%   cath_type                    cath
%   cawnen_type                  cawnen
%   cefnder_type                 cefnder
%   celain_type                  celain
%   cell_type                    cell
%   celli_type                   celli
%   celynnen_type                celynnen
%   chwarel_type                 chwarel
%   ci_type                      ci
%   cleddyf_type                 cleddyf
%   cloch_type                   cloch
%   cnewyllyn_type               cnewyllyn
%   cofl_type                    cofl
%   crotyn_type                  crotyn
%   crwydryn_type                crwydryn
%   crydd_type                   crydd
%   cwningen_type                cwningen
%   cyfrder_type                 cyfrder
%   cyngor_type                  cyngor
%   cystadleuaeth_type           cystadleuaeth
%   vowel_change_a_becomes_ai_2  dafad — grammar: "vowel change: a becomes ai"
%   dant_type                    dant
%   deiliad_type                 deiliad
%   dernyn_type                  dernyn
%   diferyn_type                 diferyn
%   dilledyn_type                dilledyn
%   draen_type                   draen
%   dwfr_type                    dwfr
%   dwr_type                     dŵr
%   edau_type                    edau
%   eglwys_type                  eglwys
%   ffrwyth_type                 ffrwyth
%   vowel_change_a_becomes_ei_4  gafr — grammar: "vowel change: a becomes ei"
%   glan_type                    glan
%   gleisiad_type                gleisiad
%   gwal_type                    gwal
%   gwenynen_type                gwenynen
%   gwerin_type                  gwerin
%   gwinllan_type                gwinllan
%   gwraig_type                  gwraig
%   ger_type                     gêr
%   helm_type                    helm
%   hoel_type                    hoel
%   hwyad_type                   hwyad
%   imp_type                     imp
%   vowel_change_a_becomes_ei_5  iâr — grammar: "vowel change: a becomes ei"
%   llech_type                   llech
%   llif_type                    llif
%   llo_type                     llo
%   llwyn_type                   llwyn
%   llwyth_type                  llwyth
%   vowel_change_a_becomes_ai_3  llygad — grammar: "vowel change: a becomes ai"
%   llyn_type                    llyn
%   llysewyn_type                llysewyn
%   llysywen_type                llysywen
%   llythyr_type                 llythyr
%   mach_type                    mach
%   vowel_change_a_becomes_ei_6  march — grammar: "vowel change: a becomes ei"
%   merch_type                   merch
%   mil_type                     mil
%   munud_type                   munud
%   mynach_type                  mynach
%   neges_type                   neges
%   oes_type                     oes
%   padell_type                  padell
%   pelen_type                   pelen
%   perchennog_type              perchennog
%   person_type                  person
%   peth_type                    peth
%   pibell_type                  pibell
%   plwyf_type                   plwyf
%   porfa_type                   porfa
%   preswylfa_type               preswylfa
%   pryd_type                    pryd
%   pryf_type                    pryf
%   punt_type                    punt
%   pwys_type                    pwys
%   pel_type                     pêl
%   rhedynen_type                rhedynen
%   rholyn_type                  rholyn
%   vowel_change_a_becomes_ai_4  sant — grammar: "vowel change: a becomes ai"
%   vowel_change_a_becomes_ei_7  sarff — grammar: "vowel change: a becomes ei"
%   vowel_change_a_becomes_ei_8  tarw — grammar: "vowel change: a becomes ei"
%   tref_type                    tref
%   ty_type                      tŷ
%   unigolyn_type                unigolyn
%   ysbryd_type                  ysbryd
%   ysgallen_type                ysgallen
% Irregular (listed in data/nouns.exceptions.tsv): blwyddyn, credadun
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
