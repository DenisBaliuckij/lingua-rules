% rules/xib/verbs.lp
% xib verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105591: Nouvelle & complete grammaire françoise & angloise (1707), pages 18, 20, 21, 25, 35, 36, 47, 92, 94, 96, 320, 321
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   avoir_type                   avoir
%   irregular_verbs_of_the_third_conjugation mouvoir — grammar: "Irregular Verbs of the third Conjugation"
%   second_conjugation           batir — grammar: "second conjugation"
%   first_conjugation            donner — grammar: "first conjugation"
%   third_conjugation            concevoir — grammar: "third conjugation"
%   repondre_type                repondre
%   vaincre_type                 vaincre
%   partir_type                  partir
%   tenir_type                   tenir
%   venir_type                   venir
% Irregular (listed in data/verbs.exceptions.tsv): abſouare, borre, cenduire, conclure, coud xe, crainare, crore, cuire, dire, ecrire, faire, lire ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
