% rules/som/adjectives.lp
% Somali adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296377: Somali (1999), pages 45, 46, 63, 74, 75, 76, 77, 95, 96, 101, 102, 104, 105, 106, 108, 113, 114, 116, 128
%   doc 652031: A Grammar of the Somali Language with Examples in Prose and Verse and an Account of the Yi (1875), pages 50, 59, 63, 66, 73, 75, 77, 80, 85, 86
%   doc 793678: Somali Grammar (2021), pages 222, 226, 227, 228, 232, 234, 236, 239, 240, 241, 244, 248, 259, 541, 542, 546, 564, 565, 568, 569, 571, 572, 582
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   verbal_adjectives            baladan — grammar: "Verbal Adjectives"
%   verbal_adjectives_2          buran — grammar: "Verbal Adjectives"
%   verbal_adjectives_3          hedan — grammar: "Verbal Adjectives"
%   verbal_adjectives_4          madan, maghan, safeisan, wanaksan — grammar: "Verbal Adjectives"
%   adug_type                    adùg
%   ballaarun_type               ballaarùn
%   buurun_type                  buurùn
%   cud_type                     cùd
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
