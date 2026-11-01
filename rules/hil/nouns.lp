% rules/hil/nouns.lp
% Hiligaynon nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289481: A Description of Hiligaynon Phrase and Clause Constructions (1972), pages 93, 99, 320
%   doc 389093: Hiligaynon Reference Grammar (1971), pages 189
%   doc 856034: Gramática Hispana-Visaya-Panayana (1892), pages 15, 17, 18, 20, 35, 36, 37, 38, 46, 47, 48
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   nombres_propios              Pedro — grammar: "Nombres Propios"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
