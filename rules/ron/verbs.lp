% rules/ron/verbs.lp
% Romanian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23134: Romanian Grammar (2003), pages 35, 50, 51, 58, 60, 62, 77, 78, 84, 97, 100, 107, 108, 133, 134, 135, 137, 138, 139, 143, 145, 147, 154, 158
%   doc 54045: Bun venit în România! Manual de limbă română şi de orientare culturală pentru străini (2008), pages 103, 138, 173
%   doc 108439: Grammaire du roumain moderne, à l'usage des français et des étrangers (1877), pages 20, 21, 22, 23, 24, 25, 26, 27, 28, 33, 35, 36, 37, 38, 41, 43, 44, 45
%   doc 650782: Manual de limba Română pentru adulții Beneficiari de Protecție Internațională în România ș (2017), pages 77, 78, 129
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   vbs_in_e                     cere — grammar: "vbs. in -e"
%   vbs_in_i                     coborî — grammar: "vbs. in -î"
%   vbs_in_a                     lucra — grammar: "vbs. in -a"
%   vbs_in_ea                    tăcea — grammar: "vbs. in -ea"
%   ramane_type                  rămâne
%   verbs_in_i_4th_conjugation   citi — grammar: "verbs in -i (4th conjugation)"
%   dormi_type                   dormi
%   verbs_in_i_4th_conjugation_2 hotărî — grammar: "verbs in -î (4th conjugation)"
%   vbs_in_a_2                   intra — grammar: "vbs. in -a"
%   vbs_in_i_stem_in_a_vowel     locui — grammar: "vbs. in -i, stem in a vowel"
%   verbs_in_e_3rd_conjugation   merge — grammar: "verbs in -e (3rd conjugation)"
%   manca_type                   mânca
%   vbs_in_i_2                   povesti — grammar: "vbs. in -i"
%   vbs_in_ea_2                  vedea — grammar: "vbs. in -ea"
%   usca_type                    usca
% Irregular (listed in data/verbs.exceptions.tsv): a avea, a cnvênt-a, a construi, a continua, a contribui, a copia, a cânt-a, a cânta, a dansa, a dormi, a duc-e, a fi ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
