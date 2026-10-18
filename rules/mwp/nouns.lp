% rules/mwp/nouns.lp
% Kalaw Kawaw Ya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388868: A sketch of Kalaw Kawaw Ya (1995), pages 19, 21
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ayza_type                    ayza
%   ngep_type                    ngep
%   yoepkaz_type                 yoepkaz
%   boekar_type                  boekar
%   diwe_type                    diwe
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
