% rules/bcr/verbs.lp
% Witsuwit'en verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28895: Witsuwit’en Grammar: Phonetics, Phonology, Morphology (2007), pages 254, 273, 394, 398, 421, 484, 538, 574, 812
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   d_stges_type                 d´stGes
%   continuative_stem_sets_final_roots yi — grammar: "Continuative stem sets, ///-final roots"
%   e_e                          O — grammar: "(e,e)"
%   n_z_n_type                   n-z´n
%   p_e_n_l_g_t_type             p+e#n-l-g´t
%   active_theme                 d-D-ts’´ƒ — grammar: "active theme"
%   neuter                       h-ne — grammar: "´- neuter"
%   active_theme_2               n´#D-g´t — grammar: "active theme"
%   d_or_l_voice_valence_neuter  o-d — grammar: "D- or l- voice/valence neuter"
%   o_ts_type                    o-ts´ƒ
%   in_neuter                    o-u-tan — grammar: "in- neuter"
%   in_neuter_2                  p+qa — grammar: "in- neuter"
%   active_theme_3               t-ƒ´s — grammar: "active theme"
%   active_theme_4               w´s — grammar: "active theme"
%   d_or_l_voice_valence_neuter_2 l-q’´t — grammar: "D- or l- voice/valence neuter"
%   neuter_verb                  li — grammar: "neuter verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
