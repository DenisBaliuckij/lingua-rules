% rules/got/adjectives.lp
% Gothic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105559: Gothic grammar, with selections for reading and a glossary (n.d.), pages 51, 52, 53, 54, 60, 62, 63, 64, 65, 67, 68, 73, 75, 77, 78, 84, 85, 87, 88, 89, 90, 91, 92, 93
%   doc 388547: Gothic (2014), pages 15, 16, 17, 19
%   doc 388548: Grammar of the Gothic Language and the Gospel of St. Mark: Selections from the Other Gospe (1937), pages 102, 105, 117, 118, 120, 121, 128, 137, 138, 146, 147, 152, 155, 156, 161, 162, 163, 166, 168, 170, 171
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   strong_adjective_declension  blinds — grammar: "strong adjective declension"
%   short_syllabic_ja_stem       midjis — grammar: "short-syllabic ja-stem"
%   weak_declension              blindus — grammar: "weak declension"
%   long_syllabic_stems_iu_ja    wilpeis — grammar: "long-syllabic stems iu -Ja"
%   u_stems                      hardus — grammar: "u-stems"
%   u_stems_2                    hardja — grammar: "u-stems"
%   comparatives                 froddza — grammar: "comparatives"
%   i_stems                      hrains — grammar: "i-stems"
%   ja_stems                     niuja — grammar: "ja-stems"
%   i_stems_2                    wilf?ia — grammar: "i-stems"
%   i_stems_3                    hrhinja — grammar: "i-stems"
%   harjizuh_type                harjizuh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
