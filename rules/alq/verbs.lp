% rules/alq/verbs.lp
% Algonquin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389145: Grammaire de la langue algonquine (1890), pages 6, 7, 16, 26, 29, 31, 32, 35, 93
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   deuxieme_conjugaison         pizindagfo — grammar: "Deuxieme conjugaison"
%   premiere_conjugaison         sakihigro — grammar: "Premiere conjugaison"
%   troisi_me_conjugaison        pasanjeho^ — grammar: "Troisi^me conjugaison"
%   verbes_a_regime_inanime_2_conj pizindan — grammar: "verbes a regime inanime (2. conj.)"
%   verbes_a_regime_inanime_1_conj sakiton — grammar: "verbes a regime inanime (1. conj.)"
%   saiakihai_type               saiakihai
%   saiakihino_type              saiakihino
%   saiakihau_type               saiakihau
%   saiakihm_type                saiakihm
%   verbe_a_regime_de_seconde_personne sakih — grammar: "Verbe a regime de seconde personne"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
