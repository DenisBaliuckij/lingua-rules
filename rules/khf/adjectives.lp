% rules/khf/adjectives.lp
% Kven adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388342: Kvensk grammatikk (2009), pages 84, 92, 101, 143, 145, 154
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   c2_stava_a_stammer           märkä — grammar: "2-stava A-stammer"
%   c2_stava_a_stammer_2         paha — grammar: "2-stava A-stammer"
%   flerstava_a_stammer          pulleeva — grammar: "Flerstava A-stammer"
%   c2_stava_a_stammer_3         tarkka — grammar: "2-stava A-stammer"
%   tervet_type                  tervet
%   tyyris_type                  tyyris
%   vasen_type                   vasen
% Irregular (listed in data/adjectives.exceptions.tsv): hyvä, pitkä, vanhaa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
