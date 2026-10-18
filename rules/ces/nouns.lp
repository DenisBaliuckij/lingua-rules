% rules/ces/nouns.lp
% Czech nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389868: Czech (2011), pages 22, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35, 36, 40, 43
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   hard_stems                   bratr — grammar: "Hard stems"
%   nsg_in_zero_e_type           dlaň — grammar: "Nsg in zero, -e/« type"
%   nsg_in_zero_i_type           kost — grammar: "Nsg in zero, -i type"
%   stems_alternating_between_hard_and_soft kotel — grammar: "Stems alternating between hard and soft"
%   soft_stems_inanimate         koš — grammar: "Soft stems Inanimate"
%   soft_stems_animate           malíř — grammar: "Soft stems Animate"
%   hard_stems_2                 mĕsto — grammar: "Hard stems"
%   a_type                       nádržka — grammar: "-a type"
%   a_virile                     přednosta — grammar: "-a virile"
%   hard_stems_3                 rozbor — grammar: "Hard stems"
%   e_at_type                    slůně — grammar: "-ě-/-at- type"
%   e_virile                     zachránce — grammar: "-e virile"
%   hard_stems_4                 žena — grammar: "Hard stems"
%   oko_type                     oko
%   vanoce_type                  vánoce
% Irregular (listed in data/nouns.exceptions.tsv): dítě
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
