% rules/ckt/nouns.lp
% Chukchi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41280: Parlons tchouktche : Une langue de Sibérie (n.d.), pages 35, 36, 67
%   doc 46660: Chukchee: A Comparative Study of the Chukchee Group of Languages (1922), pages 77, 95, 116, 117, 137
%   doc 93664: A Grammar of Chukchi (1999), pages 174
%   doc 389775: Chukchee (1921), pages 76, 77, 89, 92
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_type                   эккэт
%   class_type_2                 ӄораӈы
%   class_type_3                 Рултын
%   forms_in_in                  ne'lqin — grammar: "forms in -in"
%   form_in_in                   nime'lgin — grammar: "Form in -in"
%   class_type_4                 экык
%   class_type_5                 ӈилгын
%   plural_of_personal_noun      Tma'p — grammar: "plural of personal noun"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
