% rules/kgv/nouns.lp
% Kalamang nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15332: A grammar of Kalamang: The Papuan language of the Karas Islands (2021), pages 214, 302
%   doc 15333: A grammar of Kalamang (2022), pages 127, 154, 159, 180, 212, 257, 258, 279
%   doc 15335: A grammar sketch of Kalamang with a focus on phonetics and phonology (2016), pages 93, 95
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   pitis_type                   pitis
%   kinship_terms                dudan — grammar: "kinship terms"
%   kinship_terms_2              ema — grammar: "kinship terms"
%   kinship_terms_3              esa — grammar: "kinship terms"
%   kinship_terms_4              ketan — grammar: "kinship terms"
%   kinship_terms_5              kia — grammar: "kinship terms"
%   kinship_terms_6              korap — grammar: "kinship terms"
%   kinship_terms_7              mama — grammar: "kinship terms"
%   kinship_terms_8              nina — grammar: "kinship terms"
%   kinship_terms_9              tara — grammar: "kinship terms"
%   kinship_terms_10             tata — grammar: "kinship terms"
%   kinship_terms_11             ulan — grammar: "kinship terms"
%   kinship_terms_12             wowa — grammar: "kinship terms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
