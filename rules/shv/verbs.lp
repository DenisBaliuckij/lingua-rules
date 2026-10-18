% rules/shv/verbs.lp
% Jibbali verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 84857: The Jibbali (Shaḥri) Language of Oman: Grammar and Texts (2014), pages 134, 137, 138, 139, 142, 156, 158, 161, 162, 208, 209, 235, 237, 238
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   sfr_type                     sfɔr
%   kdr_type                     ḳɔdɔr
%   t2_stem_strong_verb          əftérég — grammar: "T2-Stem strong verb"
%   t2_stem_strong_verb_2        əftəkér — grammar: "T2-Stem strong verb"
%   gb_stem_passive              ərfíṣ — grammar: "Gb-Stem passive"
%   geminate_verb                del — grammar: "geminate verb"
%   gb_stem                      féḳər — grammar: "Gb-Stem"
%   d_l_strong                   ɛgódəl — grammar: "D/L strong"
%   s2_stem                      s̃əḳéṣərən — grammar: "Š2-Stem"
%   s2_strong                    s̃əḳéṣər — grammar: "Š2 strong"
%   g_i_w_ii_g                   axáf — grammar: "G I-w, II-G"
%   t2_iii_w_y                   aʿtédé — grammar: "T2 III-w/y"
%   h_strong                     flét — grammar: "H strong"
%   h_iii_w_y                    fḳé — grammar: "H III-w/y"
%   h_iii_g                      fṣaḥ — grammar: "H III-G"
%   s2_i                         s̃ēgər — grammar: "Š2 I-ʾ"
%   s2_i_w                       s̃ēkəl — grammar: "Š2 I-w"
%   s2_i_b                       s̃ēśər — grammar: "Š2 I-b"
%   d_l_i_w                      ōkəl — grammar: "D/L I-w"
%   d_l_i                        ōśər — grammar: "D/L I-ʾ"
%   ga_iii_w_y                   ɛrẓ́é — grammar: "Ga III-w/y"
% Irregular (listed in data/verbs.exceptions.tsv): aġád, fɔ́ tḳər, šús̃ị
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
