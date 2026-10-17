% rules/it_hist/adjectives.lp
% Italian (historical stage) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2592: Italienische Grammatik (1905), pages 222
%   doc 846708: A Grammar of the Italian Language (n.d.), pages 213, 301, 321, 347, 351, 356, 371
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   i_klasse                     buono — grammar: "I. Klasse"
%   ii_klasse                    grande — grammar: "II. Klasse"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
