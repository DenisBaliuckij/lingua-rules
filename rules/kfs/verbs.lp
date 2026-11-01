% rules/kfs/verbs.lp
% Bilaspuri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 894948: Linguistic Survey of India: Himachal Pradesh (2014), pages 424, 491, 711, 717, 729, 755, 790, 804, 939
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   potential_mood               kAr — grammar: "Potential Mood"
%   biyotokek_type               biyotokek
%   dekh_type                    dekʰ
%   ha_type                      ha
%   sa_type                      sa
%   ordinary_imperative          a — grammar: "ordinary imperative"
%   ordinary_imperative_2        de — grammar: "ordinary imperative"
%   ordinary_imperative_3        ja — grammar: "ordinary imperative"
%   ordinary_imperative_4        kar — grammar: "ordinary imperative"
%   polite_imperative            takk — grammar: "polite imperative"
%   ordinary_imperative_5        tur — grammar: "ordinary imperative"
%   polite_imperative_2          uTTh — grammar: "polite imperative"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
