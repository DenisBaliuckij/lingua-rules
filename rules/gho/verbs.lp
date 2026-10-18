% rules/gho/verbs.lp
% Ghomara Berber verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41195: A Grammar of Ghomara Berber (2015), pages 92, 93, 102, 114, 115, 119, 120, 121, 122, 124, 145, 146, 152, 154, 159, 216, 217, 233, 238, 239, 242, 243, 249
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ccv_and_cvcv_verbs_defective_verb qṛa — grammar: "ccv (and cvcv) verbs (defective verb)"
%   cvc_hollow_verbs             ɣam — grammar: "cvc (‘hollow verbs’)"
%   cacc                         ban — grammar: "cacc"
%   mccc_stem_ii                 beddel, qendel, ɛerkel — grammar: "mcCc (stem II)"
%   mccc_stem_ii_2               berreḏ, heddeḏ, ḥeddeḏ — grammar: "mcCc (stem II)"
%   berez_type                   berɣez, qeṛfez
%   mccc_stem_ii_3               beyyen, ziwen — grammar: "mcCc (stem II)"
%   mccc_stem_ii_4               beyyeṭ, qeṛweṭ — grammar: "mcCc (stem II)"
%   belbel_type                  beḷbeḷ
%   mccc_stem_ii_5               debbeɣ — grammar: "mcCc (stem II)"
%   derdeb_type                  derdeḇ
%   mccuc_pattern                dfeɛ — grammar: "mccuc pattern"
%   mccuc_pattern_2              dleḡ — grammar: "mccuc pattern"
%   mccc_stem_ii_6               felleq — grammar: "mcCc (stem II)"
%   mccuc_pattern_3              fhem — grammar: "mccuc pattern"
%   cacc_2                       fiq — grammar: "cacc"
%   mccuc_pattern_4              freq — grammar: "mccuc pattern"
%   kayen_type                   kayen
%   mccc_stem_ii_7               melleḥ — grammar: "mcCc (stem II)"
%   mccac_pattern                miḥ — grammar: "mccac pattern"
%   pencer_type                  penčer
%   qefqef_type                  qefqef, sentef, xerčef, ɣaylef
%   mcci_pattern                 qla, ḇna — grammar: "mcci pattern"
%   selsel_type                  selsel
%   mccc_stem_ii_8               wesseɛ — grammar: "mcCc (stem II)"
%   mcci_pattern_2               xwa — grammar: "mcci pattern"
%   mccac_pattern_2              xṭaṛ — grammar: "mccac pattern"
%   zegzeg_type                  zegzeg
%   cacc_3                       ɛiš — grammar: "cacc"
%   mccc_stem_ii_9               ḍehheṛ — grammar: "mcCc (stem II)"
%   cacc_4                       ḥas — grammar: "cacc"
%   mccuc_pattern_5              ḥfeṭ — grammar: "mccuc pattern"
%   mccuc_pattern_6              ḥkem — grammar: "mccuc pattern"
%   cacc_5                       ṣum — grammar: "cacc"
%   mezgawger_type               mezgawger
%   mmerr_type                   mmerr
%   muxlis_type                  muxliṣ
% Irregular (listed in data/verbs.exceptions.tsv): qqen, qqim, snes, suɣ, ttu, znez, šš, ḇdeḏ, ḵnes, ṭṭeṣ, ẓẓeḡ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
