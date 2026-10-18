% rules/kgg/verbs.lp
% Kusunda verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7412: Notes on Kusunda Grammar: A Language Isolate of Nepal (2006), pages 45, 47, 60, 61, 64, 80, 81, 82, 154, 155, 156, 158, 160
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_i                      go — grammar: "Class I"
%   bem_type                     bem
%   hyoq_type                    hyoq
%   class_i_transitive_verbs     t-˙m-˙n — grammar: "Class I Transitive Verbs"
%   class_i_intransitive_verbs   t — grammar: "Class I Intransitive Verbs"
%   class_i_transitive_verbs_2   ts-aˆ-dzi — grammar: "Class I Transitive Verbs"
%   class_i_2                    ip — grammar: "Class I"
%   class_i_transitive_verbs_3   t-uk-an — grammar: "Class I Transitive Verbs"
%   class_ii                     abi, dza, kis — grammar: "Class II"
%   class_i_3                    am — grammar: "Class I"
%   class_i_intransitive_verbs_2 s-aˆ-an — grammar: "Class I Intransitive Verbs"
%   class_i_intransitive_verbs_3 s-aˆ-du — grammar: "Class I Intransitive Verbs"
%   class_i_intransitive_verbs_4 ts-ip-du — grammar: "Class I Intransitive Verbs"
%   class_i_intransitive_verbs_5 ts-ip-ßn — grammar: "Class I Intransitive Verbs"
%   class_i_4                    ug — grammar: "Class I"
%   class_i_5                    ˙m — grammar: "Class I"
%   class_ii_2                   a — grammar: "Class II"
%   class_ii_3                   pumba — grammar: "Class II"
%   class_i_6                    come — grammar: "Class I"
%   class_i_7                    eat — grammar: "Class I"
%   byo_type                     byo≥
%   class_ii_4                   do — grammar: "Class II"
%   dz_m_type                    dzæ˙m
%   g_type                       g
%   kai_type                     kæai
%   tul_type                     tul
% Irregular (listed in data/verbs.exceptions.tsv): da, die, see, sleep
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
