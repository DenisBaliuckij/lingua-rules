% rules/asb/verbs.lp
% Assiniboine verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 295563: A Grammar of Assiniboine: A Siouan Language of the Northern Plains (2005), pages 223, 224, 227, 230, 243, 245, 304, 372
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   verbs_in_kici                okíciyakA — grammar: "verbs in kici"
%   pa_type                      pä
%   y_stem_active_verbs          éyaku — grammar: "y-stem active verbs"
%   i_type                       í
%   nasal_verbs                  wäka, wøká, yâká — grammar: "Nasal verbs"
%   nasal_verbs_2                ëwüõa — grammar: "Nasal verbs"
%   nasal_verbs_3                ü — grammar: "Nasal verbs"
%   y_stem_verbs                 ahíyayA — grammar: "y-stem verbs"
%   single_locative              apóõâ — grammar: "Single Locative:"
%   two_locatives                a®ókatA — grammar: "Two Locatives:"
%   nasal_verbs_4                ec±á®ø — grammar: "Nasal verbs"
%   y_stem_verbs_2               iyáyA — grammar: "y-stem verbs"
%   two_locatives_2              iyótâyâ — grammar: "Two Locatives:"
%   lexicalized_ki_verbs         kic±ó — grammar: "lexicalized ki verbs"
%   lexicalized_ki_verbs_2       kiknøka — grammar: "lexicalized ki verbs"
%   lexicalized_ki_verbs_3       kiktá — grammar: "lexicalized ki verbs"
%   lexicalized_ki_verbs_4       kisní — grammar: "lexicalized ki verbs"
%   caus_aux                     tasákkiyA — grammar: "CAUS(AUX):"
%   nasal_verbs_5                tók±a®ø — grammar: "Nasal verbs"
%   pattern_3_mixed              ét±i — grammar: "Pattern 3: Mixed"
%   single_locative_2            ëpä — grammar: "Single Locative:"
%   instrumental_prefixes_mo_na  öcí — grammar: "Instrumental Prefixes mo-, na:"
%   instrumental_prefixes_mo_na_2 ötákA — grammar: "Instrumental Prefixes mo-, na:"
%   caus_aux_2                   øspék±iyA — grammar: "CAUS(AUX):"
%   caus_aux_3                   špâyÁ — grammar: "CAUS(AUX):"
%   nasal_verbs_6                ec±á®ë — grammar: "Nasal verbs"
%   pattern_3_mixed_2            okíni — grammar: "Pattern 3: Mixed"
% Irregular (listed in data/verbs.exceptions.tsv): it±áwa, wac±ä ®ë
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
