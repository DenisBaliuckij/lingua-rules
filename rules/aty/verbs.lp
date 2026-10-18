% rules/aty/verbs.lp
% Aneityum verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 94: A grammar of Anejom (2000), pages 55, 88, 135
%   doc 289442: Anejom Grammar Sketch (1982), pages 17
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   cifi_type                    cifi
%   ehcohos_type                 ehcohos
%   esjiiid_type                 esjiiid
%   ethafi_type                  ethafi
%   etpojej_type                 etpojej
%   hag_type                     hag
%   heliafi_type                 heliafi
%   isjepigmofi_type             isjepigmofi
%   le_type                      le
%   mas_type                     mas
%   ohyiomod_type                ohyiomod
%   tafi_type                    tafi
%   umoh_type                    umoh
% Irregular (listed in data/verbs.exceptions.tsv): yek
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
