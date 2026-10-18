% rules/twe/nouns.lp
% Teiwa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389349: A Grammar of Teiwa (2010), pages 102, 185, 210, 211, 212, 213
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   inalienable_nouns            oma — grammar: "inalienable nouns"
%   consonant_initial_body_part_noun tan — grammar: "consonant-initial body part noun"
%   inalienable_nouns_2          xala — grammar: "inalienable nouns"
%   alienable                    yaf — grammar: "alienable"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
