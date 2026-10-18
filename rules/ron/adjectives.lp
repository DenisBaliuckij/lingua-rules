% rules/ron/adjectives.lp
% Romanian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23134: Romanian Grammar (2003), pages 35, 50, 51, 58, 60, 62, 77, 78, 84, 97, 100, 107, 108, 133, 134, 135, 137, 138, 139, 143, 145, 147, 154, 158
%   doc 54045: Bun venit în România! Manual de limbă română şi de orientare culturală pentru străini (2008), pages 103, 138, 173
%   doc 108439: Grammaire du roumain moderne, à l'usage des français et des étrangers (1877), pages 20, 21, 22, 23, 24, 25, 26, 27, 28, 33, 35, 36, 37, 38, 41, 43, 44, 45
%   doc 650782: Manual de limba Română pentru adulții Beneficiari de Protecție Internațională în România ș (2017), pages 77, 78, 129
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   possessive_pronominal_adjectives meu — grammar: "possessive pronominal adjectives"
%   four_form_adjectives         albastru — grammar: "four-form adjectives"
%   alta_type                    alta
%   alta_type_2                  altă
%   three_form_adjectives        auriu, viu — grammar: "three-form adjectives"
%   four_form_adjectives_2       continu, harnic, sărac, bun — grammar: "four-form adjectives"
%   adjectives_of_indefinite_quantity destul — grammar: "Adjectives of indefinite quantity"
%   two_form_adjectives          dulce, mare — grammar: "two-form adjectives"
%   three_form_adjectives_2      fermecător, strălucitor — grammar: "three-form adjectives"
%   four_form_adjectives_3       frumos — grammar: "four-form adjectives"
%   two_form_adjectives_2        gălbui — grammar: "two-form adjectives"
%   three_form_adjectives_3      larg, mic — grammar: "three-form adjectives"
%   adjectives_of_indefinite_quantity_2 mult, suficient — grammar: "Adjectives of indefinite quantity"
%   four_form_adjectives_4       mândru — grammar: "four-form adjectives"
%   three_form_adjectives_4      omenesc, românesc — grammar: "three-form adjectives"
%   four_form_adjectives_5       pribeag — grammar: "four-form adjectives"
%   adjectives_of_indefinite_quantity_3 puţin — grammar: "Adjectives of indefinite quantity"
%   three_form_adjectives_5      roşu — grammar: "three-form adjectives"
%   two_form_adjectives_3        vechi — grammar: "two-form adjectives"
%   two_form_adjectives_4        verde — grammar: "two-form adjectives"
%   two_form_adjectives_5        vioi — grammar: "two-form adjectives"
%   care_type                    care
% Irregular (listed in data/adjectives.exceptions.tsv): greu, nou, rău
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
