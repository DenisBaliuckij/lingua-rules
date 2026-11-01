% rules/kiu/nouns.lp
% Zazaki nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388536: A Grammar of Dimili (Also Known as Zaza) (2008), pages 77, 80, 81, 83
%   doc 388537: Zazaki (2004), pages 4, 7, 13, 15, 16, 17, 18
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ban_type                     ban
%   deve_type                    deve
%   keynek_type                  keynek
%   meseta_type                  meseta
%   wa_type                      wa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
