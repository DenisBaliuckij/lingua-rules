% rules/usa/verbs.lp
% Usarufa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389478: Usarufa: A Descriptive Grammar (1965), pages 32, 99, 100, 101, 105
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kev_type                     keV
%   stative                      kautoQIRb — grammar: "stative"
%   v_class                      agataVla — grammar: "V-class"
%   itavlb_type                  itaVlb
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
