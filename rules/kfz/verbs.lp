% rules/kfz/verbs.lp
% Koromfe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296276: Koromfe (1992), pages 250, 251, 255, 256, 258, 307, 478, 479
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   stems_with_afinal_obstruent_and_therefor !gondl — grammar: "Stems with afinal obstruent (and therefore an 'epenthetic' vowel in the UNMARKED and DURATIVEforms)"
%   stems_with_afinal_obstruent_and_therefor_2 !slb! — grammar: "Stems with afinal obstruent (and therefore an 'epenthetic' vowel in the UNMARKED and DURATIVEforms)"
%   stems_with_afinal_obstruent_and_therefor_3 !t£l]g!, ikendl — grammar: "Stems with afinal obstruent (and therefore an 'epenthetic' vowel in the UNMARKED and DURATIVEforms)"
%   stems_with_afinal_obstruent_and_therefor_4 !zamb! — grammar: "Stems with afinal obstruent (and therefore an 'epenthetic' vowel in the UNMARKED and DURATIVEforms)"
%   c_final_stems_with_final_phonetic_c_in_t gaI)am, n£l]am — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   c_final_stems_with_final_phonetic_c_in_t_2 ganam — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   c_final_stems_with_final_phonetic_c_in_t_3 gelAm — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   c_final_stems_with_final_phonetic_c_in_t_4 kamam — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   c_final_stems_with_final_phonetic_c_in_t_5 kanam — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   stems_with_afinal_obstruent_and_therefor_5 lk£sVl]g! — grammar: "Stems with afinal obstruent (and therefore an 'epenthetic' vowel in the UNMARKED and DURATIVEforms)"
%   c_final_stems_with_final_phonetic_c_in_t_6 manam — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   c_final_stems_with_final_phonetic_c_in_t_7 zagamam — grammar: "C-final stems with final phonetic C in the UNMARKED form"
%   iffw_type                    IffW
%   ig_jndvl_type                Ig:JndVl
%   imefjl_type                  ImEfJl, igaul
%   ivabvl_type                  IvabVl
%   igan_type                    igan
%   iken_type                    iken!, ikon!, lmin!
%   lhubvl_type                  lhubVl
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
