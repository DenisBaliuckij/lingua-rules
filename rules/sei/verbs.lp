% rules/sei/verbs.lp
% Seri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389099: Seri, A Grammar of (2007), pages 448, 449, 452, 453, 454, 455, 457, 471, 615, 616, 629, 632, 635, 801
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   aanjo_type                   aanjö
%   aho_type                     aho
%   apzx_type                    apzx, mihzx
%   atp_type                     atp
%   comca_type                   comca
%   icaatax_type                 icaatax
%   iijc_type                    iijc
%   iisc_type                    iisc
%   iitc_type                    iitc
%   itoocta_type                 itoocta
%   monjc_type                   monjc
%   neezj_type                   neezj
%   oteja_type                   oteja
%   pisaqu_im_type               pisaqu-im
%   pitol_type                   pitol
%   quesejc_type                 quesejc
%   tapzx_type                   tapzx
%   ficj_type                    ficj
%   itaactim_type                itaactim
%   cim_type                     √Cim
%   aasalc_a_type                √aasalc-a
%   apo_x_type                   √apo-x
%   atp_type_2                   √atp
%   imo_x_type                   √imo-x
%   ipa_x_type                   √ipa-x
%   mis_type                     √mis
%   ooc_ta_type                  √ooc-ta
%   pasj_im_type                 √pasj-im
%   tins_type                    √tins
%   zaxo_type                    √zaxö
%   as_type                      √ās
% Irregular (listed in data/verbs.exceptions.tsv): √Cactim, √aaitom, √aazi, √acozxot, √afp, √ah, √ap, √azquim, √ee, √iih, √iij, √isil ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
