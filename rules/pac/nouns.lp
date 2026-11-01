% rules/pac/nouns.lp
% Pacoh nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40846: A grammar of Pacoh: a Mon-Khmer language of the central highlands of Vietnam (2014), pages 44, 45, 78
%   doc 389393: A Pacoh Analytic Grammar (2000), pages 206, 458
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ku_mc_n_type                 ku.mç˘N
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
