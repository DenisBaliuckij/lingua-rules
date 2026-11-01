% rules/zul/nouns.lp
% Zulu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 845086: The Isizulu: A grammar of the Zulu language (1870), pages 134, 135, 139, 144, 146, 243, 244, 245, 248, 249, 251, 252, 253, 254, 255, 256, 257, 259, 261, 262, 263, 264, 265, 282, 342
%   doc 845108: The Isizulu: A Revised Edition of a Grammar of the Zulu Language (1893), pages 95, 96, 104, 105, 120, 123, 125, 182, 183, 185, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 243, 244, 344
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   scheme_of_the_genitive_of_a_common_noun inkosi — grammar: "Scheme of the Genitive of a Common Noun"
%   i_declension_of_common_nouns umuntu — grammar: "I. DECLENSION OF COMMON NOUNS."
%   ii_declension_of_a_proper_name_of_a_pers ufaku — grammar: "II. DECLENSION OF A PROPER NAME OF A PERSON,"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
