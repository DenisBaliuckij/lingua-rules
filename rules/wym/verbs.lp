% rules/wym/verbs.lp
% Wymysorys verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11: A Grammar of Wymysorys (2016), pages 28, 29, 31, 32, 33, 34, 35, 36, 39, 40, 43, 79, 80, 81, 82, 83, 85, 86, 87, 91, 95, 96, 99, 106
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_preterite               maha, gejn — grammar: "weak Preterite"
%   fourth_class                 zȧjn — grammar: "fourth class"
%   strong_verbs                 bigja — grammar: "strong verbs"
%   boda_type                    boda, fałda
%   resultative_auxiliary        błȧjn — grammar: "Resultative auxiliary"
%   preterite_present_verbs      djyfa, kyna, mygja, wysa ... — grammar: "Preterite-Present verbs"
%   husta_type                   hüsta
%   kaksa_type                   kaksa, kuza
%   preterite_present_verbs_2    müsa, tejgja — grammar: "Preterite-Present verbs"
%   tousa_type                   toüśa
%   c4_2_preterite_plural_in_u_and_u cin — grammar: "4.2 Preterite plural in u and ü"
%   class_4_preterite_singular_in_u załca — grammar: "Class 4: Preterite singular in u"
%   class_4_preterite_singular_in_u_2 łanga — grammar: "Class 4: Preterite singular in u"
%   class_4_preterite_singular_in_u_3 bynda — grammar: "Class 4: Preterite singular in u"
%   c4_2_preterite_plural_in_u_and_u_2 zoüfa — grammar: "4.2 Preterite plural in u and ü"
%   class_4_preterite_singular_in_u_4 śisa — grammar: "Class 4: Preterite singular in u"
% Irregular (listed in data/verbs.exceptions.tsv): baka, brȧha, feljyn, fergasa, ferleśa, foła, fłisa, gan, hengja, hon, hoün, hywa ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
