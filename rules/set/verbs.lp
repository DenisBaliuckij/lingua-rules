% rules/set/verbs.lp
% Sentani verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 72116: A Grammar Sketch of Sentani (2021), pages 39
%   doc 839578: Grammar of the Sentani Language with Specimen Texts and Vocabulary (1970), pages 49, 50, 51, 52, 53, 54, 56
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   primary_verb                 ma — grammar: "Primary Verb"
%   secondary_verb               ho — grammar: "Secondary Verb"
%   primary_verb_with_object_affix wtJ — grammar: "Primary Verb with object affix"
%   indicative_with_2dd_p_duo_and_pl_obj_aff mokobokabale — grammar: "Indicative with 2Dd p. duo and pl. obJ. aff. as models"
%   indicative_with_1st_p_sg_obj_aft_do_bb_m mokowdoboke — grammar: "Indicative with 1st p. sg. obj. aft. (-do) BB model"
%   secondary_verb_with_object_affix moko — grammar: "Secondary Verb with object affix"
%   adhoriatlve_with_obj_alf_srd_p_s_n_as_mo mokodambom — grammar: "Adhoriatlve with obJ. alf. srd p.s. (·n·) as modeL"
%   condltlonal_with_obj_aft_srd_p_s_n_as_mo mokojnobole — grammar: "Condltlonal with obJ. aft. srd p.s. (·n·) as model"
%   indicative_with_srd_p_s_obj_aft_n_bb_mod mokownobokale — grammar: "Indicative with Srd p.s. obj. aft. (·n·) BB modeL"
%   vetative_with_obj_aft_i_p_s_d_as_model ahojdoboj-jE — grammar: "Vetative with obJ. aft. I"' p.s. (-d.) as model"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
