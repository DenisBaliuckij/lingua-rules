% rules/mam/adjectives.lp
% Mam adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389157: A Grammar of Mam, a Mayan Language (1983), pages 80
%   doc 389158: Gramática Pedagógica Mam: B'aayil (1999), pages 49, 57, 70, 71
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   estativo                     jitx'joj — grammar: "estativo"
%   estativo_2                   sak — grammar: "estativo"
%   nim_type                     nim
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
