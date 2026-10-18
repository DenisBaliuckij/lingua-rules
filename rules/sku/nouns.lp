% rules/sku/nouns.lp
% Sakao nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 828795: Description du Sakao, langue océanienne du nord-est Santo (Vanuatu): Phonologie, morpholog (2014), pages 120, 125, 405, 436
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   noms_relationnels_obligatoirement_possed mana-n — grammar: "noms relationnels obligatoirement possédés"
%   noms_relationnels_obligatoirement_possed_2 tata-n — grammar: "noms relationnels obligatoirement possédés"
%   noms_relationnels_obligatoirement_possed_3 utia-n — grammar: "noms relationnels obligatoirement possédés"
%   noms_relationnels_obligatoirement_possed_4 walðœ-n — grammar: "noms relationnels obligatoirement possédés"
%   noms_relationnels_obligatoirement_possed_5 ðiɔ-n — grammar: "noms relationnels obligatoirement possédés"
%   noms_relationnels_obligatoirement_possed_6 ðøða-n — grammar: "noms relationnels obligatoirement possédés"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
