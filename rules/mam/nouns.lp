% rules/mam/nouns.lp
% Mam nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389157: A Grammar of Mam, a Mayan Language (1983), pages 80
%   doc 389158: Gramática Pedagógica Mam: B'aayil (1999), pages 49, 57, 70, 71
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   estativo                     winaq — grammar: "estativo"
%   estativo_2                   xnaq'tzaal — grammar: "estativo"
%   jaa_type                     jaa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
