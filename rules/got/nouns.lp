% rules/got/nouns.lp
% Gothic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105559: Gothic grammar, with selections for reading and a glossary (n.d.), pages 51, 52, 53, 54, 60, 62, 63, 64, 65, 67, 68, 73, 75, 77, 78, 84, 85, 87, 88, 89, 90, 91, 92, 93
%   doc 388547: Gothic (2014), pages 15, 16, 17, 19
%   doc 388548: Grammar of the Gothic Language and the Gospel of St. Mark: Selections from the Other Gospe (1937), pages 102, 105, 117, 118, 120, 121, 128, 137, 138, 146, 147, 152, 155, 156, 161, 162, 163, 166, 168, 170, 171
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   i_declension                 balgs — grammar: "i-declension"
%   i_declension_2               gasts — grammar: "i-declension"
%   u_declension_fern            handus — grammar: "u-declension (fern.)"
%   a_declension                 hlaifs — grammar: "a-declension"
%   stems_in_jo_with_long_syllables bandi — grammar: "stems in jo with long syllables"
%   a_declension_2               dags — grammar: "a-declension"
%   ya_stems                     hairdeis — grammar: "ya-stems"
%   pure_a_stems                 haubip — grammar: "Pure a-stems"
%   ja_stems                     kuni — grammar: "ja-stems"
%   masculines_with_short_consonantal_cases manna — grammar: "Masculines with short (consonantal) cases"
%   masculines_with_short_consonantal_cases_2 reiks — grammar: "Masculines with short (consonantal) cases"
%   u_declension_masc            sunus — grammar: "u-declension (masc.)"
%   pure_a_stems_2               waurd — grammar: "Pure a-stems"
%   pure_o_stems                 giba — grammar: "pure o-stems"
%   ya_stems_2                   harjis — grammar: "ya-stems"
%   w_stems                      kniu — grammar: "w-stems"
%   stems_in_jo_with_long_syllables_2 mawi — grammar: "stems in jo with long syllables"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
