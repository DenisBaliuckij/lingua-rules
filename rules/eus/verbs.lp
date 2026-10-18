% rules/eus/verbs.lp
% Basque verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 45517: A Grammar of Basque (2003), pages 208, 237, 239, 245, 246, 247, 249, 250, 254, 260, 261, 262, 263, 265, 267, 269, 270, 273
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   conditional_monovalent_forms izan — grammar: "conditional monovalent forms"
%   trivalent_abs_dat_erg_present_pot_forms ezan — grammar: "Trivalent ABS/DAT/ERG present POT forms for a 3rd person SG ABS argument"
%   eduki_type                   eduki
%   ekarri_type                  ekarri
%   eraman_type                  eraman
%   transitive_verbs_forms_for_a_third_perso io — grammar: "transitive verbs (forms for a third person SG object)"
%   jakin_type                   jakin
%   bivalent_intransitive_abs_dat da — grammar: "bivalent intransitive (ABS/DAT)"
%   ibili_type                   ibili
%   iritzi_type                  iritzi
%   irudi_type                   irudi
%   joan_type                    joan
%   jardun_type                  jardun
%   etorri_type                  etorri
%   bivalent_intransitive_abs_dat_2 na — grammar: "bivalent intransitive (ABS/DAT)"
%   trivalent_abs_dat_erg_present_subj_forms d — grammar: "Trivalent ABS/DAT/ERG present SUBJ forms for a 3rd person SG ABS argument"
%   bivalent_transitive_abs_erg  edun — grammar: "bivalent transitive (ABS/ERG)"
%   bivalent_transitive_abs_erg_present_and egin — grammar: "Bivalent transitive (ABS/ERG) present and past POT forms for a 3rd person ABS argument"
%   transitive_pattern_a         ekarr — grammar: "transitive pattern A"
%   imperative                   e — grammar: "Imperative"
%   imperative_2                 i — grammar: "Imperative"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
