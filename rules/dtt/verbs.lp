% rules/dtt/verbs.lp
% Toro Tegu Dogon verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7398: A Grammar of the Dogon of Tabi-Sarinyere (Toro Tegu) Tabi dialect (2008), pages 193, 211, 212, 231, 232, 307
%   doc 296327: A Grammar of Toro Tegu Dogon, Tabi dialect (2010), pages 98, 99, 188, 207, 213, 214
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   un_type                      ùnɔ́
%   kosiyo_type                  kósíyó
%   dugur_type                   dùŋgùrɔ́
%   gu_no_type                   gu$No@
%   guyno_type                   gùyⁿó
%   ka_type                      ká
%   ow_type                      ów
%   a_nna_type                   a@nna@
%   ba_ra_type                   ba$ra@
%   bc_sc_type                   bç$sç@
%   bs_type                      bɔ̀sɔ́
%   ci_type                      ci@
%   de_wra_type                  dE$wra@
%   de_le_type                   de$le@
%   di_ne_type                   di$Ne@
%   di_type                      di@
%   dig_type                     dig
%   du_ngu_rc_type               du$Ngu$rç@
%   da_nsa_type                  dà:ⁿsá
%   dc_type                      dç^˘
%   dele_type                    dèlé
%   de_type                      dé
%   die_type                     dìŋé
%   d_type                       dɔ́
%   d_type_2                     dɔ́́
%   dwra_type                    dɛ̀wrá
%   d_type_3                     dɛ́
%   e_wa_type                    e@wa@
%   go_type                      go
%   go_type_2                    gó
%   hit_type                     hit
%   i_go_type                    i@go@
%   ji_type                      ji@
%   jirumo_type                  jìrùmó
%   ka_type_2                    ka^˘
%   ku_lo_type                   ku@lo@
%   li_type                      li@
%   lo_type                      ló
%   l_type                       lɛ́
%   n_type                       nɛ́
%   po_type                      po^˘
%   po_type_2                    pó
%   sit_type                     sit
%   so_type                      so^˘
%   so_type_2                    só
%   u_nc_type                    u$nç@
%   w_type                       wɔ́
%   ye_ri_type                   ye$ri@
%   yi_type                      yi@
%   y_type                       yɛ́
%   ynawna_type                  yⁿàwⁿá
%   ynomo_type                   yⁿòmó
%   zc_nc_type                   zç$Nç@
%   zc_type                      zç&˘
%   z_type                       zɔ̀ŋɔ́
%   z_type_2                     zɔ̌
%   awa_type                     áwá
%   ise_type                     ìsé
%   igo_type                     ígó
%   u_type                       ùɔ́
% Irregular (listed in data/verbs.exceptions.tsv): bE$ru@, bring, come, wç&˘, ya@
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
