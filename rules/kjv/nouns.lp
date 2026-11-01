% rules/kjv/nouns.lp
% Illirica (Slavic) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105438: Grammatica della lingua slava (illirica) (1878), pages 42, 53, 55, 57, 58, 59, 60, 63, 64, 67, 100, 106, 107, 108, 111, 112, 113
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   tema_duro_inanimati          brod — grammar: "Tema duro inanimati"
%   tema_duro_animati            golub — grammar: "Tema duro animati"
%   tema_molle_animati           kralj — grammar: "Tema molle animati"
%   tema_molle_inanimati         nož — grammar: "Tema molle inanimati"
%   iii_declinazione             stvar — grammar: "III Declinazione"
% Irregular (listed in data/nouns.exceptions.tsv): kći
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
