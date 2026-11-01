% rules/xop/nouns.lp
% Kopar nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8698: A Sketch Grammar of Kopar: A Language of New Guinea (2022), pages 74, 87
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   itman_type                   itəman
%   kakan_type                   kakan
%   maman_type                   maman
%   mayn_type                    mayn
%   nor_type                     nor
%   nman_type                    nəman
%   ram_type                     ram
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
