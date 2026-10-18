% rules/gvf/nouns.lp
% Golin nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 894924: Golin Grammar (1970), pages 36, 37, 38, 39, 42
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   non_alienable_animate_nouns_group_a boliman — grammar: "Non-alienable Animate Nouns (group a)"
%   non_alienable_animate_nouns_group_a_2 wan — grammar: "Non-alienable Animate Nouns (group a)"
%   non_alienable_animate_nouns_group_b al — grammar: "Non-alienable Animate Nouns (group b)"
%   non_alienable_inanimate_group_a an — grammar: "Non-alienable Inanimate (group a)"
%   non_alienable_inanimate_group_b diin — grammar: "Non-alienable Inanimate (group b)"
%   non_alienable_animate_nouns_group_a_3 ebin — grammar: "Non-alienable Animate Nouns (group a)"
%   non_alienable_inanimate_group_a_2 gariba — grammar: "Non-alienable Inanimate (group a)"
%   non_alienable_inanimate_group_b_2 gibil — grammar: "Non-alienable Inanimate (group b)"
%   non_alienable_inanimate_group_a_3 giran — grammar: "Non-alienable Inanimate (group a)"
%   non_alienable_animate_nouns_group_b_2 ibal — grammar: "Non-alienable Animate Nouns (group b)"
%   non_alienable_inanimate_group_b_3 ogu — grammar: "Non-alienable Inanimate (group b)"
% Irregular (listed in data/nouns.exceptions.tsv): mina, nen
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
