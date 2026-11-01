% rules/dto/nouns.lp
% Tommo So nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7397: A Grammar of Tommo So: Dogon Language Family, Mali (2011), pages 73, 74, 79, 80, 81, 235, 236, 269, 270, 303, 416, 417
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   dumbu_type                   dùmbú
%   gunn_type                    gùnnɔ́
%   youju_type                   yòùɲjú
%   abiy_type                    àbìyɛ́
% Irregular (listed in data/nouns.exceptions.tsv): jɛ́ŋɛ́-nɛ, kùmbó-nɛ, tírɛ́-nɛ, yàá, àná, íí
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
