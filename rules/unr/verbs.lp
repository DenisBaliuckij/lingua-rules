% rules/unr/verbs.lp
% Mundari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2931: A Descriptive Analysis of Mundari: A Study of the structure of the Mundari language accord (1965), pages 136, 138, 140, 142, 144, 166, 167, 168, 291, 297, 305, 310
%   doc 389094: Mundari Grammar Book (2013), pages 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 26, 27, 36, 39, 71, 72, 180, 181
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   gak_type                     gak
%   transitive_verbs             lelke — grammar: "Transitive Verbs"
%   sen_type                     sen
%   transitive_verbs_2           lelea — grammar: "Transitive Verbs"
%   gum_type                     gum
%   lel_type                     lel
%   lelkotana_type               lelkotana
%   sena_type                    sena
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
