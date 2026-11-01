% rules/uig/nouns.lp
% Uyghur nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388311: Modern Uigur (1971), pages 40, 51, 61, 63
%   doc 388315: Modern Uyghur Grammar (Morphology) (2003), pages 106
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ana_type                     ana
%   daptar_type                  daptar
%   kitap_type                   kitap
%   kot_type                     köt
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
