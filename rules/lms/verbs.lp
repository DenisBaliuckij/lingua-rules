% rules/lms/verbs.lp
% Limousin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 850052: Grammaire Limousine: phonétique, parties du discours (n.d.), pages 169, 199, 242, 249, 285
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   premiere_conjugaison_a_ar_lat_are chantar — grammar: "Première conjugaison â (ar = : lat. are)"
%   creire_type                  creire
%   faire_type                   faire
%   flurir_type                  flurir
%   partir_type                  partir
%   tenir_type                   tenir
%   venir_type                   venir
% Irregular (listed in data/verbs.exceptions.tsv): avei, dire, saber, veire
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
