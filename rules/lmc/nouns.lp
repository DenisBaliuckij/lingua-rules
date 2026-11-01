% rules/lmc/nouns.lp
% Limilngan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289484: A grammar of Limilngan: A language of the Mary River Region, Northern Territory, Australia (2001), pages 31, 62, 65, 71, 79, 94, 95, 98, 104
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   body_part_class_class_iv     arluk — grammar: "body part class (Class IV)"
%   w_adlangan_type              w-adlangan
% Irregular (listed in data/nouns.exceptions.tsv): adlangan
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
