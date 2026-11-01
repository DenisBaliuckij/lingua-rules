% rules/xpo/nouns.lp
% Nahuatl nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388922: El dialecto mexicano de Pochutla, Oaxaca (1917), pages 7
%   doc 895187: Gramática de la lengua azteca o mejicana (1870), pages 35, 57, 58
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   cone_t_type                  cone't
%   conebo_l_type                conebo'l
%   teque_t_type                 teque't
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
