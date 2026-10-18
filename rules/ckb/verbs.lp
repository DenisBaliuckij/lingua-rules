% rules/ckb/verbs.lp
% Mukri Kurdish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389842: Sorani Kurdish: A Reference Grammar with Selected Readings (2009), pages 21, 35, 36, 38, 39, 40, 43, 46, 47, 48, 49, 55, 56, 62, 63, 64, 65, 69, 71, 72, 73, 86, 89, 90, 91, 93, 94
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   nusin_type                   nûsîn
%   dibin_type                   dibîn
%   chun_type                    chûn
%   kawtin_type                  kawtin
%   kewtin_type                  kewtin
%   bun_type                     bûn, gayîn, mân
%   hatin_type                   hâtin
%   bin_type                     bîn
%   ditin_type                   dîtin, dân
%   hatin_type_2                 hatin
%   kirdinawa_type               kirdinawa
%   ner_type                     ner
%   hatin_type_3                 hâtîn
%   khwardin_type                khwârdin
%   krin_type                    křîn
%   mawin_type                   mâwîn
%   binrin_type                  bînrîn
%   verbs_ending_in_awa          dozînawa — grammar: "verbs ending in -awa"
%   e_stems                      gařân — grammar: "E-stems"
%   garanawa_type                gařânawa
%   henan_type                   henân
%   verbs_ending_in_awa_2        hâtînawa — grammar: "verbs ending in -awa"
%   verbs_ending_in_awa_3        mâwînawa — grammar: "verbs ending in -awa"
%   da_nishtin_type              dâ-nîshtin
%   gwe_girtin_type              gwe-girtin
%   tawaw_kirdin_type            tawâw-kirdin
%   wis_bun_type                 wis-bûn
% Irregular (listed in data/verbs.exceptions.tsv): birdin, khistin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
