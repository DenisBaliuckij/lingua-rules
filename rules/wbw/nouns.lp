% rules/wbw/nouns.lp
% Wooi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 278: A grammar of Wooi: An Austronesian language of Yapen Island, Western New Guinea (2016), pages 159, 160, 163, 183, 197
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   direct_possessive_constructions_in_kinsh hinyai — grammar: "direct possessive constructions in kinship terms"
%   compounding_words            horepang — grammar: "compounding words"
%   direct_possessive_constructions_in_kinsh_2 humoi — grammar: "direct possessive constructions in kinship terms"
%   direct_possessive_constructions_in_kinsh_3 raruo, tere — grammar: "direct possessive constructions in kinship terms"
%   compounding_words_2          rekami — grammar: "compounding words"
%   direct_possessive_constructions_in_kinsh_4 tamai — grammar: "direct possessive constructions in kinship terms"
%   compounding_words_3          varacara — grammar: "compounding words"
%   hanevey_type                 hanevey
%   netarayhey_type              netarayhey
% Irregular (listed in data/nouns.exceptions.tsv): amarai, antu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
