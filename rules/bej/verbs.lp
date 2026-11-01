% rules/bej/verbs.lp
% Beja verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15344: Beja Pedagogical Grammar (2004), pages 25, 148, 149, 150, 151, 152, 153, 154, 161, 162, 163, 164, 166, 169, 180, 182, 184, 191, 192, 215, 216, 247, 254, 268
%   doc 21532: Beja grammatical sketch (2014), pages 32
%   doc 21538: A Grammatical Study of Beja (1964), pages 150
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   diya_type                    diya
%   weak_verbs_or_class_1_verbs  yak — grammar: "weak verbs (or class 1 verbs)"
%   riba_type                    riba
%   tam_type                     tam
%   basic_stem_number_1          diy — grammar: "Basic Stem (Number 1)"
%   aree_type                    aree, agrii
%   prefixed_before_v_phoneme_with_unmarked dg — grammar: "prefixed, before V-phoneme (with unmarked strong long Transitisor)"
%   bariya_type                  bariya
%   hiya_type                    hiya
%   agriiyani_type               agriiyani
%   anaw_type                    anaw
%   imperative_jussive_paradigm_1 araatay — grammar: "Imperative, Jussive Paradigm 1"
%   present_singular_and_plural_stems_number eetniiw, eeyad — grammar: "Present Singular and Plural Stems (Number 3 and 4)"
%   gw_an_type                   gw'an
%   gw_ani_type                  gw'ani
%   strong_verb                  iishbib — grammar: "Strong Verb"
%   rhan_type                    rhan
%   rhani_type                   rhani
%   akwi_type                    akwi
%   atood_aar_type               atood'aar
%   ka_eetaa_type                ka'eetaa
%   atood_iir_type               atood'iir
%   y_ani_type                   y'ani
%   pattern_cay                  baya — grammar: "Pattern Cay-"
%   pattern_cicac                fiyaka — grammar: "Pattern CiCaC-"
%   present_singular_and_plural_stems_number_2 ndi — grammar: "Present Singular and Plural Stems (Number 3 and 4)"
%   negative_imperative_stem_number_2 diiy — grammar: "Negative Imperative Stem (Number 2)"
%   imperative_jussive_paradigm_2 gw'atay — grammar: "Imperative, Jussive Paradigm 2"
%   iitnaw_type                  iitnaw
%   yihaa_type                   yihaa
% Irregular (listed in data/verbs.exceptions.tsv): y
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
