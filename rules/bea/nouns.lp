% rules/bea/nouns.lp
% Beaver nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70670: A Writer's Resource: A Handbook for Writing and Research (Sixth Edition) (2014), pages 518, 519, 613
%   doc 70853: Elementary English in Action. Grade V (n.d.), pages 284, 285
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   baby_type                    baby
%   box_type                     box
%   boy_type                     boy
%   car_type                     car
%   cousin_type                  cousin
%   fairy_type                   fairy
%   flag_type                    flag
%   girl_type                    girl
%   glass_type                   glass
%   grass_type                   grass
%   inventor_type                inventor
%   lady_type                    lady
%   lake_type                    lake
%   library_type                 library
%   loss_type                    loss
%   penny_type                   penny
%   playmate_type                playmate
%   reporter_type                reporter
%   story_type                   story
%   tax_type                     tax
%   teacher_type                 teacher
%   toy_type                     toy
%   word_type                    word
%   year_type                    year
% Irregular (listed in data/nouns.exceptions.tsv): child, deer, foot, man, mouse, ox, sheep, woman
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
