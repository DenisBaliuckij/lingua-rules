% rules/bor/nouns.lp
% Bororo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 24726: A grammar of Bororo (1979), pages 212
%   doc 388721: Ainore Boe egore: um estudo descritivo da língua bororo e conseqüências para a teoria de c (2008), pages 65
%   doc 388722: Gramática Pedagógica Bororo: Um Esboço Preliminar (2013), pages 14, 15, 16, 18, 21, 51, 61, 75, 100
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   formas_regulares             aredu — grammar: "Formas regulares"
%   formas_regulares_2           imedu — grammar: "Formas regulares"
%   formas_regulares_3           iparedu — grammar: "Formas regulares"
%   formas_regulares_4           kuridogedu — grammar: "Formas regulares"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
