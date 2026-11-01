% rules/abk/verbs.lp
% Abkhaz verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 48482: Abkhaz: A Comprehensive Self-Tutor (2010), pages 24, 33, 34, 45, 55, 63, 65, 67, 79, 152, 153, 307, 308, 309
%   doc 389772: Abkhaz (1979), pages 82
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_type                   стәоуп
%   stative_verb_root_ending_in_open_vowel ka — grammar: "Stative verb (root ending in open vowel)"
%   dynamic_group_i_tenses       гыла — grammar: "Dynamic Group I Tenses"
%   stative_verb_root_ending_in_consonant_cl хәыч — grammar: "Stative verb (root ending in consonant + close vowel)"
%   dynamic_verbs                дыҧс — grammar: "Dynamic verbs"
%   dynamic_verbs_2              дсахьа — grammar: "Dynamic verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
