% rules/tcy/verbs.lp
% Tulu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389691: A Grammar of the Tulu Language (1872), pages 20, 22, 30, 33, 38
%   doc 389692: A Grammar of Tulu (A Dravidian Language) (1971), pages 93, 523, 528, 529
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   a_y_eri_type                 a:-y-eri
%   a_w_e_type                   a:-w-E
%   negative_verbal_substantive  aswontu — grammar: "Negative Verbal Substantive"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
