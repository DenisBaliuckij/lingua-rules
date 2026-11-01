% rules/vec/adjectives.lp
% Venetian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71610: General Grammar Book of the Venetan Language and its Varieties (2007), pages 7, 8, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33
%   doc 388335: Manual Gramaticałe Xenerałe de ła Łéngua Vèneta e łe só varianti (2012), pages 8, 21, 22, 27, 29, 32, 33
%   doc 388336: Grammatica veneta (2015), pages 55, 65, 69, 79, 91, 92, 98, 134
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bon_type                     bón
%   grando_type                  grando, santo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
