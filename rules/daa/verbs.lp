% rules/daa/verbs.lp
% Dangaleat verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 823518: An Introduction to the Verbal System of Central Dangaleat (1995), pages 23, 43, 51, 57, 59, 60, 62, 79, 98
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   low_low                      a:cfe — grammar: "Low-Low"
%   rawte_type                   rawte
%   high_high                    bire, bugume, anne — grammar: "High-High"
%   mid_low                      bo:be, gacfe — grammar: "Mid-Low"
%   mid_low_2                    kokicfe — grammar: "Mid-Low"
%   a_cfe_type                   a.:cfe
%   high_high_2                  a:pe — grammar: "High-High"
%   mid_low_3                    alge — grammar: "Mid-Low"
%   ba_ge_type                   ba:ge, du:fe
%   bo_de_type                   bo:de
%   low_mid                      bore — grammar: "Low-Mid"
%   ca_le_type                   ca:le, sa:le
%   cf_type                      cf€
%   de_type                      de
%   fa_type                      fa
%   low_low_2                    jeklcfe — grammar: "Low-Low"
%   la_le_type                   la:le
%   ne_type                      ne
%   low_low_3                    saycfe — grammar: "Low-Low"
%   low_low_4                    saycfl — grammar: "Low-Low"
%   ss_type                      ss
%   te_type                      te, ws
%   low_low_5                    a:c — grammar: "Low-Low"
%   a_cf_te_type                 a:cf:(te
%   amue_type                    amUe
%   low_mid_2                    ams — grammar: "Low-Mid"
%   low_mid_3                    amse — grammar: "Low-Mid"
%   high_high_3                  ann — grammar: "High-High"
%   arme_type                    arme
%   low_mid_4                    bor — grammar: "Low-Mid"
%   high_high_4                  bugum — grammar: "High-High"
%   dlmse_type                   dlmse
%   low_mid_5                    ga.:re — grammar: "Low-Mid"
%   low_mid_6                    ga:r — grammar: "Low-Mid"
%   ga_rlnte_type                ga:rlnte
%   mid_low_4                    gac — grammar: "Mid-Low"
%   ja_we_type                   ja:we
%   low_mid_7                    kabHe — grammar: "Low-Mid"
%   low_mid_8                    kabll — grammar: "Low-Mid"
%   low_low_6                    slc — grammar: "Low-Low"
%   low_low_7                    sloe — grammar: "Low-Low"
%   imperative                   wa:we — grammar: "Imperative"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
