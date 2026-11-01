% rules/vml/verbs.lp
% Malgana verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289424: A salvage grammar of Malgana, the language of Shark Bay, Western Australia (2011), pages 42, 48, 52, 65, 66, 69, 70, 71, 72, 87, 94, 95
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   yugarri_type                 yugarri
%   ngarri_type                  ngarri
%   ngathaanu_type               ngathaanu
%   garlguyayi_type              garlguyayi
%   bumba_type                   bumba
%   gambaniya_type               gambaniya, ngathiniya
%   mandarrinu_type              mandarrinu
%   naga_type                    naga
%   ngangguyanu_type             ngangguyanu
%   ngarrinyina_type             ngarrinyina, gambanyina
%   nyiniyan_type                nyiniyan
%   yanigiya_type                yanigiya
%   yarran_type                  yarran
%   bajaniya_type                bajaniya
%   barndiyanu_type              barndiyanu
%   batharnu_type                batharnu, wanthanu, yungganu
%   gambanu_type                 gambanu
%   ganyigiya_type               ganyigiya
%   gardabudanu_type             gardabudanu, wayamanha
%   garlgunu_type                garlgunu
%   ngarnija_type                ngarnija
%   ngathinu_type                ngathinu, wangganu
%   ngathinyina_type             ngathinyina
%   ngundaniya_type              ngundaniya
%   wangganyina_type             wangganyina
%   yanangu_type                 yanangu
%   bajaniyanu_type              bajaniyanu
%   bajanmanha_type              bajanmanha
%   bungu_type                   bungu
%   gambanmanha_type             gambanmanha
%   ganmanha_type                ganmanha
%   garlgunyina_type             garlgunyina
%   mandarrimanha_type           mandarrimanha
%   murinyina_type               murinyina
%   nangiyanu_type               nangiyanu
%   ngabirrinyina_type           ngabirrinyina
%   ngarniyanu_type              ngarniyanu
%   ngarnmanha_type              ngarnmanha
%   ngathimanha_type             ngathimanha
%   ngundamanha_type             ngundamanha
%   ngundanyina_type             ngundanyina
%   nyinamanha_type              nyinamanha
%   nyinanu_type                 nyinanu
%   wandinyina_type              wandinyina
%   wanggamanha_type             wanggamanha
%   wangganiyanu_type            wangganiyanu
%   yanmanha_type                yanmanha
%   yarranmanha_type             yarranmanha
%   yarranu_type                 yarranu
% Irregular (listed in data/verbs.exceptions.tsv): bu-mba, nga-thaa, nha-ga, nyi-na, ya-naa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
