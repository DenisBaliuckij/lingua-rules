% rules/yua/nouns.lp
% Yucatec Maya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22330: A Historical Grammar of the Maya Language of Yucatan 1557-2000 (2008), pages 78
%   doc 388639: A Grammar of the Yucatecan Mayan Language (1996), pages 22, 36, 37, 40, 41, 42, 43, 45, 91, 92, 94, 95, 96, 97, 99, 100, 102, 103, 121, 122, 123, 126, 129
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   be_type                      be
%   cic_type                     cħicħ
%   ku_type                      ku
%   na_type                      na
%   pek_type                     pek
%   tzimin_type                  tzimin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
