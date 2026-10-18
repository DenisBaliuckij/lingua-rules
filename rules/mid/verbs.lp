% rules/mid/verbs.lp
% Neo-Mandaic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41569: The Neo-Mandaic Dialect of Khorramshahr (2014), pages 109, 159, 160, 189, 211, 214, 215, 218, 219, 223, 224, 226, 233, 235, 238, 239, 248, 249
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ii_weak_geminate_perfectives_w_object_su òat — grammar: "II-Weak & Geminate Perfectives w/ Object Suffixes"
%   ezga_type                    ezgÁ
%   iii_weak_c_stem_verb         aÎΩi — grammar: "III-Weak C-Stem Verb"
%   iii_weak_d_stem_verb         waddi — grammar: "III-Weak D-Stem Verb"
%   i_weak_d_stem                alleφ — grammar: "I-Weak D-Stem"
%   iii_weak_c_stem_verb_2       a××i — grammar: "III-Weak C-Stem Verb"
%   strong_verb                  gĕÔal — grammar: "Strong Verb"
%   strong_d_stem                zabben — grammar: "Strong D-Stem"
%   i_weak_verb                  ĕΩad — grammar: "I-Weak Verb"
% Irregular (listed in data/verbs.exceptions.tsv): ĕhaΩ, ĕmar
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
