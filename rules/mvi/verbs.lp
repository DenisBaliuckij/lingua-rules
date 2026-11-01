% rules/mvi/verbs.lp
% Irabu (Miyako Ryukyuan) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289464: A Grammar of Irabu, a Southern Ryukyuan Language (2008), pages 104, 229, 233, 275, 279, 291, 293, 294, 378
%   doc 388269: Ōgami - Éléments de description d'un parler du sud des Ryūkyū (2009), pages 392, 400
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   existential_verb_inanimate   ar — grammar: "Existential verb (inanimate)"
%   class_2                      kuu — grammar: "Class 2"
%   pc_verb                      taka-ka — grammar: "PC verb"
%   class_1                      ibi — grammar: "Class 1"
%   class_2_2                    tur — grammar: "Class 2"
%   class_1_2                    ihi — grammar: "Class 1"
%   verbes_en_f_arroser          ikɛf-f — grammar: "Verbes en -f « arroser »"
%   class_2_3                    fii — grammar: "Class 2"
%   verbes_en_f_arroser_2        ikɛf — grammar: "Verbes en -f « arroser »"
% Irregular (listed in data/verbs.exceptions.tsv): ks, kss, njaa, ur
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
