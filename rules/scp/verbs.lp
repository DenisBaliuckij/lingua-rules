% rules/scp/verbs.lp
% Sherpa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289536: A sketch grammar of Lamjung Yolmo (2016), pages 68, 96, 111, 130
%   doc 388323: A Grammar of Hile Sherpa (2007), pages 62, 63, 157, 158, 159, 160, 163, 192
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   weak_verbs                   CaH-u, MEJn-u, PiJr-u, PuJr-u ... — grammar: "weak verbs"
%   alternation_of_stem_vowels_between_the_p ReJ-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   weak_verbs_2                 foJ-u — grammar: "weak verbs"
%   weak_verbs_3                 kuxr-u — grammar: "weak verbs"
%   alternation_of_stem_vowels_between_the_p_2 qoJl-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   weak_verbs_4                 ziHm-u — grammar: "weak verbs"
%   alternation_of_stem_vowels_between_the_p_3 ROHl-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   alternation_of_stem_vowels_between_the_p_4 SoJr-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   alternation_of_stem_vowels_between_the_p_5 ToN-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   alternation_of_stem_vowels_between_the_p_6 foN-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   alternation_of_stem_vowels_between_the_p_7 loJm-u — grammar: "alternation of stem vowels between the perfective and imperfective"
%   perceptual_evidence_copula   dù — grammar: "Perceptual evidence copula"
%   perceptual_evidence_copula_negative mìndu — grammar: "Perceptual evidence copula (negative)"
%   u_type                       ŋù
% Irregular (listed in data/verbs.exceptions.tsv): DO-p, huN-u, qir-u, sà, teJr-u
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
