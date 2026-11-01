% rules/unm/nouns.lp
% Southern Unami Delaware nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92313: A Grammar of Southern Unami Delaware (Lenape) (2021), pages 65, 74, 75, 84, 85, 90, 91, 104, 119, 121, 123
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   animate                      lanu — grammar: "Animate"
%   animate_2                    ahtu — grammar: "Animate"
%   animate_3                    sa·k-i·ma — grammar: "Animate"
%   animate_4                    skinnu — grammar: "Animate"
%   animate_5                    xkwe· — grammar: "Animate"
%   inanimate                    hakhakw — grammar: "Inanimate"
%   animate_6                    hit·ukw — grammar: "Animate"
%   animate_7                    masa·kw — grammar: "Animate"
%   animate_8                    maxkw — grammar: "Animate"
%   animate_9                    s — grammar: "Animate"
%   animate_10                   xayhu — grammar: "Animate"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
