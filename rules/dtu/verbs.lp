% rules/dtu/verbs.lp
% Tebul Ure (Dogon) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289390: A Grammar of Tebul Ure (Dogon, Mali) (2015), pages 49, 69, 99, 175, 177, 178, 195, 201, 202
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   recent_perfect               ɲɛ́ — grammar: "recent perfect"
%   h_toned_stems                tómbó — grammar: "{H}-toned stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
