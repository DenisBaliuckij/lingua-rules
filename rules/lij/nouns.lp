% rules/lij/nouns.lp
% Tabarchino (Ligurian) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388932: Grammatica del tabarchino (2005), pages 72, 73, 74, 75, 112, 114, 117, 122, 126, 170, 172, 175, 176, 178, 180, 183, 185, 189, 193, 195, 196, 197, 198, 199
%   doc 816516: Grammaire Monégasque (1909), pages 22, 33, 34, 35, 38, 42, 46, 55, 57, 58, 59, 64, 65, 66, 67, 68, 71, 75, 76, 81, 82, 84
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   crestian_type                crestian
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
