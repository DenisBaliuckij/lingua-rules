% rules/got/verbs.lp
% Gothic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105559: Gothic grammar, with selections for reading and a glossary (n.d.), pages 51, 52, 53, 54, 60, 62, 63, 64, 65, 67, 68, 73, 75, 77, 78, 84, 85, 87, 88, 89, 90, 91, 92, 93
%   doc 388547: Gothic (2014), pages 15, 16, 17, 19
%   doc 388548: Grammar of the Gothic Language and the Gospel of St. Mark: Selections from the Other Gospe (1937), pages 102, 105, 117, 118, 120, 121, 128, 137, 138, 146, 147, 152, 155, 156, 161, 162, 163, 166, 168, 170, 171
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   first_weak_conjugation_jan   nasjan — grammar: "first weak conjugation (-jan)"
%   strong_verbs                 niman — grammar: "strong verbs"
%   strong_verbs_2               haitan — grammar: "strong verbs"
%   strong_verbs_3               hiitan — grammar: "strong verbs"
%   third_weak_conjugation_an    haban — grammar: "THIRD WEAK CONJUGATION (-an)"
%   fourth_weak_conjugation      fullnan — grammar: "Fourth Weak Conjugation"
%   second_weak_conjugation      salbbjan — grammar: "Second Weak Conjugation"
%   third_weak_conjugation       haba — grammar: "Third Weak Conjugation"
%   ii_weak_verbs                salb&u — grammar: "II. Weak Verbs"
%   first_weak_conjugation_jan_2 sōkjan — grammar: "first weak conjugation (-jan)"
%   first_weak_conjugation       stijjan — grammar: "First Weak Conjugation"
%   first_weak_conjugation_jan_3 stōjan — grammar: "first weak conjugation (-jan)"
%   class_ii                     tiuhan — grammar: "CLASS II"
%   class_i                      beidan — grammar: "CLASS I"
%   class_ii_2                   driusan — grammar: "CLASS II"
%   class_vi                     faran — grammar: "CLASS VI"
%   class_vi_2                   frapjan — grammar: "CLASS VI"
%   strong_verbs_having_i_af_in_the_infiniti giban — grammar: "strong verbs having i (af) in the infinitive"
%   class_vi_3                   graban — grammar: "CLASS VI"
%   class_i_2                    leiban — grammar: "CLASS I"
%   strong_verbs_having_i_af_in_the_infiniti_2 mitan — grammar: "strong verbs having i (af) in the infinitive"
%   strong_verbs_having_i_af_in_the_infiniti_3 qipan — grammar: "strong verbs having i (af) in the infinitive"
%   class_vi_4                   slaban — grammar: "CLASS VI"
%   class_i_3                    sneipan — grammar: "CLASS I"
%   strong_verbs_having_i_af_in_the_infiniti_4 sniwan — grammar: "strong verbs having i (af) in the infinitive"
% Irregular (listed in data/verbs.exceptions.tsv): %, dih, ga-dars, ga-mdt, ga-nah, kann, mag, magan, man, munan, parf, skal ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
