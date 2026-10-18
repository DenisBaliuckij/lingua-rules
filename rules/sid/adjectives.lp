% rules/sid/adjectives.lp
% Sidaama adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8751: A Grammar of Sidaama (Sidamo), A Cushitic Language of Ethiopia (2007), pages 165, 168, 225, 232, 241, 249, 366, 404, 420, 421, 749
%   doc 853568: Manuale di Sidamo (n.d.), pages 2
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   hiitti_type                  hiitti
%   hiittoo_type                 hiittoo
%   me_u_type                    me'u
%   airr_ado_type                airr-ado
%   biif_ado_type                biif-ado
%   bubb_type                    bubb
%   bus_a_type                   bus-a
%   busul_e_type                 busul-e
%   call_type                    c’all
%   deaam_type                   de’aam
%   dunka_type                   dunka
%   dur_type                     dur
%   duum_type                    duum
%   faayya_type                  faayya
%   fiit_iweelo_type             fiit’-iweelo
%   goow_aame_type               goow-aame
%   goww_a_type                  goww-a
%   hafur_aam_type               hafur-aam
%   haw_aale_type                haw-aale
%   jawaat_a_type                jawaat-a
%   kaajj_ado_type               kaajj-ado
%   mool_a_type                  mool-a
%   oow_aam_type                 oow-aam
%   tuma_type                    t’u’ma
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
