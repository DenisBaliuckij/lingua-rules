% rules/anv/nouns.lp
% Denya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 52619: Denya Phonology (1996), pages 14, 18
%   doc 52620: Denya Segmental Phonology (1999), pages 13, 14
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   gender_7_8                   bwî — grammar: "Gender 7/8"
%   gender_7_8_2                 bà — grammar: "Gender 7/8"
%   gender_3_6                   bɛ́ — grammar: "Gender 3/6"
%   gender_1_2                   fwɛ́ — grammar: "Gender 1/2"
%   gender_5_6                   kpò — grammar: "Gender 5/6"
%   gender_5_8                   kwálâ — grammar: "Gender 5/8"
%   gender_1_2_2                 m$fwa$ — grammar: "Gender 1/2"
%   gender_1_2_3                 me$fwE@ — grammar: "Gender 1/2"
%   gender_1_2_4                 n$tE$ — grammar: "Gender 1/2"
%   gender_1_2_5                 ntɛ̀ — grammar: "Gender 1/2"
%   gender_9_10                  sè — grammar: "Gender 9/10"
%   gender_3_13                  sǎ — grammar: "Gender 3/13"
% Irregular (listed in data/nouns.exceptions.tsv): mu&, mǔ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
