% rules/drs/nouns.lp
% Gedeo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46561: A Grammar of Gedeo: A Cushitic Language of Ethiopia (2015), pages 92, 128, 133, 195, 384
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   boosea_type                  booseʔa
%   darba_type                   darba
%   hijjo_type                   hijjo
%   dara_type                    darɡaɡɡ
%   furcukk_type                 furc’ukkʼ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
