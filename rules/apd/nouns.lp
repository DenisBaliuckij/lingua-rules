% rules/apd/nouns.lp
% Darfur Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 627861: A grammar of Darfur Arabic (2018), pages 73, 120, 198, 199, 210, 212, 224, 226, 227, 229, 230, 235, 240, 242, 243, 247, 251, 253, 255, 256, 257, 258, 260, 261, 263
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   axaj_type                    axaːj
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
