% rules/gwi/verbs.lp
% Gwich'in verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 107279: A grammar and dictionary of the Tukudh language (1870), pages 20, 26, 27, 28, 29, 37, 38, 42, 46, 48, 52, 54, 55, 58, 69, 71, 72, 74, 78
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dhiltsik_type                dhiltsik
%   khugwisaei_type              khugwisaei
%   kukweldhut_type              kukweldhut
%   kwittridtigwiohilyin_type    kwittridtigwiohilyin
%   oohisukthut_type             oohisukthut
%   tukwilnji_type               tukwilnji
%   riokoteldhun_type            riokoteldhun
%   vookuitulekh_type            vookuitulekh
%   gichikhyi_type               gichikhyi
%   kasuhndui_type               kasuhndui
%   vutsunelhtsi_type            vutsunelhtsi
%   tihsiyin_type                tihsiyin
%   kwineinihnja_type            kwineinihnja
%   trigootisinjik_type          trigootisinjik
%   tilyin_type                  tilyin
%   uukul_type                   UUkul
%   ovihkthut_type               ovihkthut
%   vetyidhelnjik_type           vetyidhelnjik
%   vetyitelnjik_type            vetyitelnjik
%   vuttsutritilmdul_type        vuttsutritilmdul
%   kusivik_type                 kusivik
%   nechihnja_type               nechihnja
%   ihtrekh_type                 ihtrekh
%   itrekh_type                  itrekh
%   katrikwilnji_type            katrikwilnji
%   khenitteitinihsaei_type      khenitteitinihsaei
%   kwuntlutitiha_type           kwuntlutitiha
%   kwuntluvia_type              kwuntluvia
%   kwutsuttrinihnji_type        kwutsuttrinihnji
%   kwutsuttrinihnjik_type       kwutsuttrinihnjik
%   ochidhihsinjik_type          ochidhihsinjik
%   ochisinji_type               ochisinji
%   otihkthut_type               otihkthut
%   otikthut_type                otikthut
%   otitisundul_type             otitisundul
%   vitrekh_type                 vitrekh
%   vutsvintetiltsi_type         vutsvintetiltsi
%   tirsrul_type                 tirsrul
%   titrekh_type                 titrekh
%   virsrul_type                 virsrul
%   kkenitteitinidhisaej_type    kkenitteitinidhisaej
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
