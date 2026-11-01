% rules/sjn/verbs.lp
% Sindarin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388872: Pedin Edhellen: a Sindarin-Course (2010), pages 18, 23, 41, 52, 59, 68, 69, 75, 76, 114, 126
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   transitive_a_verbs           linna — grammar: "Transitive A-verbs"
%   a_verbs                      lacha, ertha — grammar: "A-verbs"
%   gonathra_type                gonathra
%   transitive_a_verbs_2         maetha — grammar: "Transitive A-verbs"
%   intransitive_a_verbs         muda — grammar: "Intransitive A-verbs"
%   aphad_type                   aphad
%   i_verbs                      dar — grammar: "I-verbs"
%   gonod_type                   gonod
%   govad_type                   govad
%   i_verbs_2                    ped — grammar: "I-verbs"
%   i_verbs_3                    pede, tele — grammar: "I-verbs"
%   i_verbs_4                    tol — grammar: "I-verbs"
%   deg_type                     deg
% Irregular (listed in data/verbs.exceptions.tsv): carfa, gala, gwa, sav
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
