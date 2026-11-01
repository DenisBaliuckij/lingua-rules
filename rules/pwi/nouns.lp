% rules/pwi/nouns.lp
% Patwin nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71654: A Description of the Patwin Language (2015), pages 110, 159
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   human_nouns                  Pila·y — grammar: "human nouns"
%   human_nouns_2                k’a·y — grammar: "human nouns"
%   human_nouns_3                seri-ta — grammar: "human nouns"
% Irregular (listed in data/nouns.exceptions.tsv): p’oki-ta, wi·-ta
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
