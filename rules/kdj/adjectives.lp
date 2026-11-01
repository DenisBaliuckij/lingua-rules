% rules/kdj/adjectives.lp
% Karamojong adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296351: Parlons karimojong: Une langue de l'Afrique orientale (2008), pages 52, 53, 54, 55, 57, 58, 86, 87, 88, 89, 90, 91, 94, 110
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   bus_type                     bùs
%   os_type                      os
%   dwar_type                    dwar
%   jok_type                     jok
%   reng_type                    rèng
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
