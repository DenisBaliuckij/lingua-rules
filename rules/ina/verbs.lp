% rules/ina/verbs.lp
% Interlingua verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92843: Gramática Essencial de Interlingua em Português (2018), pages 20, 25, 26, 44
%   doc 92845: Interlingua pro Omnes (2018), pages 17
%   doc 388579: Interlingua Grammar (1951), pages 29, 50, 51
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   esser_type                   esser, cantar, crear
%   ir_type                      ir
%   sortir_type                  sortir, audir
%   vader_type                   vader
%   voler_type                   voler, vider
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
