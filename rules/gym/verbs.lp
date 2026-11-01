% rules/gym/verbs.lp
% Guaymi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70910: Guaymi Grammar and Dictionary with Some Ethnological Notes (1956), pages 17, 18, 21, 46, 47, 48, 49
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   nene_type                    nene
%   noaine_type                  noaine
%   tau_type                     tau
%   auxiliary_verb               dabd — grammar: "auxiliary verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
