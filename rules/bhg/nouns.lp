% rules/bhg/nouns.lp
% Binandere nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 897146: Binandere Grammar (n.d.), pages 3, 19
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ai_type                      Ai
%   dao_type                     Dao
%   mai_type                     Mai
%   maka_type                    Maka
%   mamo_type                    Mamo
%   nojbo_type                   Nojbo
%   ru_type                      Ru
%   tato_type                    Tato
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
