% rules/brh/verbs.lp
% Brahui verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289754: An Essay on the Brāhūī Grammar, after the German of the late Dr. Trumpp, of Munich Univers (1880), pages 13, 14, 15, 16, 20, 21, 22, 23, 26, 37, 39, 40, 41, 45, 47, 48, 57, 58, 59, 60, 65, 66
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   prohibitive_verb_c           khan-ing — grammar: "prohibitive verb C"
%   prohibitive_form             mdr — grammar: "Prohibitive Form"
%   khana_type                   khana
%   simple_future                mar — grammar: "Simple Future"
%   ending_in_a_consonant        khalk — grammar: "Ending in a Consonant"
%   imperfect_prohibitive        khan-t-dv-afa — grammar: "Imperfect (Prohibitive)"
%   pluperfect_prohibitive       khan-t-dv-asuf — grammar: "Pluperfect (Prohibitive)"
%   khdlk_type                   khdlk
%   perfect_prohibitive          khdn-ta-n-ut — grammar: "Perfect (Prohibitive)"
%   gidr_ing_type                gidr-ing
%   hal_ing_type                 hal-ing
%   har_ing_type                 har-ing
%   hars_ing_type                hars-ing
%   kash_ing_type                kash-ing, gaf-ing
%   khvdh_ing_type               khvdh-ing, hir-ing, kah-ing
%   khvdnif_ing_type             khvdnif-ing
%   lor_ing_type                 lor-ing, das-ing
%   nir_ing_type                 nir-ing
%   substantive_verb_past_tense  pa-r — grammar: "substantive verb past tense"
%   rasing_ing_type              rasing-ing
%   dushdy_ing_type              dushdy-ing
%   ending_in_a_vowel            khand — grammar: "Ending in a Vowel"
%   khul_ing_type                khul-ing
%   kun_ing_type                 kun-ing
%   hatar_ing_type               hatar-ing
%   hin_ing_type                 hin-ing
%   hun_ing_type                 hun-ing
%   mds_type                     mds
%   shdy_ing_type                shdy-ing
%   sil_ing_type                 sil-ing
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
