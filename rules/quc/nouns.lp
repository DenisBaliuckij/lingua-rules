% rules/quc/nouns.lp
% K'iche' nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70545: Basic K'ichee' Grammar: Thirty-Eight Lessons, Revised Edition (2014), pages 30, 31, 53, 65, 91, 96, 102, 146, 159, 161, 166, 178, 188, 196, 197, 198, 221, 230, 231
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   achajiloom_type              achajiloom
%   alkwalaxeel_type             alk’wa’laxeel
%   aqanaaj_type                 aqanaaj
%   biaaj_type                   b’i’aaj
%   chaqixeel_type               chaq’ixeel
%   ixoqiloom_type               ixoqiloom
%   kajolaxeel_type              k’ajolaxeel
%   wachaaj_type                 wachaaj
% Irregular (listed in data/nouns.exceptions.tsv): achi, ak’aal, ala, ali
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
