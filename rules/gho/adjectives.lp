% rules/gho/adjectives.lp
% Ghomara Berber adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41195: A Grammar of Ghomara Berber (2015), pages 92, 93, 102, 114, 115, 119, 120, 121, 122, 124, 145, 146, 152, 154, 159, 216, 217, 233, 238, 239, 242, 243, 249
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   spanish_type_adjectives      gurḏ-u, ruḇy-u, ḍubb-u — grammar: "Spanish-type adjectives"
%   diminutives_of_adjectives    kḥel — grammar: "Diminutives of adjectives"
%   diminutives_of_adjectives_2  qṣir — grammar: "Diminutives of adjectives"
%   diminutives_of_adjectives_3  zṛeq — grammar: "Diminutives of adjectives"
%   guhdi_type                   ǧuhdi, ḍuɣri, ḥqiqi
%   diminutives_of_adjectives_4  ɣliṭ — grammar: "Diminutives of adjectives"
%   hezzuti_type                 ḥeẓẓuti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
