% rules/bhn/verbs.lp
% Bohtan Neo-Aramaic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389757: The Neo-Aramaic Dialect of Bohtan (2009), pages 50, 54, 59, 63, 81, 82, 83, 85, 107, 108
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_i                      štoya — grammar: "Class I"
%   class_i_strong_verbs         ptoxa — grammar: "Class I: strong verbs"
%   class_i_final_ayin           qṭowa — grammar: "Class I: Final Ayin"
%   vowel_initial_class_iii      maxule — grammar: "Vowel-Initial Class III"
% Irregular (listed in data/verbs.exceptions.tsv): be, yowu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
