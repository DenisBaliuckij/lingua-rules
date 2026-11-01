% rules/tel/nouns.lp
% Telugu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 708736: A Grammar of Modern Telugu (1985), pages 56, 57, 58, 86, 89, 92, 96, 103, 104, 138, 139, 141, 142, 143, 144
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   gurram_type                  gurram
%   kukka_type                   kukka
%   pallem_type                  paLLem
%   pellaam_type                 peLLaam
%   sneehitudu_type              sneehituDu
%   illu_type                    illu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
