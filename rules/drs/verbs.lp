% rules/drs/verbs.lp
% Gedeo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46561: A Grammar of Gedeo: A Cushitic Language of Ethiopia (2015), pages 92, 128, 133, 195, 384
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   he_type                      heɗ
%   usur_type                    usur
%   bat_type                     batʼ, wotʼ
%   bot_type                     bot͡ʃʼ, kʼot͡ʃʼ
%   diip_type                    diipʼ, ɡopʼ
%   tuk_type                     tukʼ, ʃikʼ
% Irregular (listed in data/verbs.exceptions.tsv): daɡ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
