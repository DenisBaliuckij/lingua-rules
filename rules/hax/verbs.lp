% rules/hax/verbs.lp
% Haida verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389576: Haida Grammar (1895), pages 18, 21, 22, 23, 43, 48, 61, 62, 64, 65, 71, 73, 74, 79, 83, 92, 94
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ill_type                     ill
%   kum_type                     kum
%   kalung_type                  kalung
%   potential_mood_present_tense kalimgfinhangung — grammar: "Potential Mood. Present Tense."
%   potential_mood_present_progressive_tense kfilunjiunganhangung — grammar: "Potential Mood. Present Progressive Tense."
%   potential_mood_past_and_future_tenses krdunganhasingung — grammar: "Potential Mood. Past and Future Tenses."
%   future_perfect_progressive_tense krilunfuinSungangst'stlo — grammar: "Future Perfect Progressive Tense"
%   kwoyadiilgigangaliangung_type kwoyadiilgigangaliangung
%   kwoyfidiilgungasrstlo_type   kwoyfidiilgungasrstlo
%   kwoyridifiirigungsustlo_type kwoyridifiirigungsustlo
%   conditional_conjunctive      stltlingaijung — grammar: "Conditional Conjunctive"
%   walk_type                    walk
%   kuijangalianjiniij_type      kuijangalianjiniij
%   conjugation_i                kwoyada — grammar: "Conjugation I"
%   kwoyfidadzinf_type           kwoyfidadzinf
%   kwoyfidajiladzing_type       kwoyfidajiladzing
%   kwoyiidiagnnghangung_type    kwoyiidiagnnghangung
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
