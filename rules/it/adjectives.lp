% rules/it/adjectives.lp
% Italian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2592: Italienische Grammatik (1905), pages 231, 255, 256, 262
%   doc 846708: A Grammar of the Italian Language (n.d.), pages 98, 218, 239, 245, 264, 273, 294, 295, 298, 304, 325, 326, 331, 332, 368, 369
%   doc 846709: A New Italian Grammar, on a Plan which Will Greatly Facilitate a Practical as Well as a Th (n.d.), pages 54, 92, 108, 113, 133
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bello_type                   bello
%   buono_type                   buono
%   grande_type                  grande
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
