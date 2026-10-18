% rules/njo/nouns.lp
% Ao Naga nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 72100: Ao Naga Grammar with Illustrative Phrases and Vocabulary (1893), pages 19
%   doc 289649: A phonetic and phonological description of Ao: a Tibeto-Burman language of Nagaland, north (2003), pages 146
%   doc 389608: A Grammar of Mongsen Ao (2007), pages 109, 113
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   kinship_terms                tŜ-ja — grammar: "kinship terms"
%   kinship_terms_2              tŜ-ku — grammar: "kinship terms"
%   kinship_terms_3              tŜ-paׄ — grammar: "kinship terms"
%   kinship_terms_4              tŜ-u — grammar: "kinship terms"
%   kinship_terms_5              tŜ-zŜ — grammar: "kinship terms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
