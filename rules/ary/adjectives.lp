% rules/ary/adjectives.lp
% Moroccan Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41669: The Routledge Introductory Course in Moroccan Arabic (2018), pages 149, 157, 159, 160, 173, 183, 202, 216, 228, 329, 340, 384, 449, 454, 502, 510, 555
%   doc 41673: A Grammar of Moroccan Arabic (2004), pages 39, 40, 41, 42, 44, 45, 66
%   doc 389983: Arabic, An Introduction to Moroccan (n.d.), pages 35, 36, 81, 82, 84, 85, 86, 91, 175, 176, 178, 180, 185, 190, 193
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   kbir_type                    kbir
%   l_ali_type                   l'ali
%   mrid_type                    mrid
%   msdud_type                   msdud
%   mzyan_type                   mzyan
%   nqi_type                     nqi
%   yir_type                     yir
%   demonstrative_adjectives     dak — grammar: "demonstrative adjectives"
%   frhan_type                   frhan, l'yan
%   demonstrative_adjectives_2   had — grammar: "demonstrative adjectives"
%   iwax_type                    iwax
%   plurals_of_adjectives        feṟħan — grammar: "Plurals of adjectives"
%   lftul_type                   lftul
%   plurals_of_adjectives_2      mezyan — grammar: "Plurals of adjectives"
%   plurals_of_adjectives_3      meħlul — grammar: "Plurals of adjectives"
%   plurals_of_adjectives_4      mešdud — grammar: "Plurals of adjectives"
%   plurals_of_adjectives_5      mwessex — grammar: "Plurals of adjectives"
%   plurals_of_adjectives_6      ɛeyyan — grammar: "Plurals of adjectives"
%   plurals_of_adjectives_7      ḡali — grammar: "Plurals of adjectives"
% Irregular (listed in data/adjectives.exceptions.tsv): byeđ, kħel, ždid, ṟxiṣ, ṣḡiṟ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
