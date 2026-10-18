% rules/yii/nouns.lp
% Yidiny nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 94522: A Grammar of Yidiny (1977), pages 81, 101, 108, 155, 192, 193, 211, 222, 236, 240, 242, 247
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   regular_nominal_inflections  baa]i:gal — grammar: "Regular nominal inflections"
%   roots_ending_in_u_a_u_a      galambafa — grammar: "roots ending in u, a, u:, a:"
%   morphophoneme_final_nominal_inflections gindam — grammar: "Morphophoneme-final nominal inflections"
%   regular_nominal_inflections_2 mad — grammar: "Regular nominal inflections"
%   roots_ending_in_i_y_and_iy   mula.ri — grammar: "roots ending in -i, -y and -iy"
%   regular_nominal_inflections_3 mulairi — grammar: "Regular nominal inflections"
%   regular_nominal_inflections_4 bijidjin — grammar: "Regular nominal inflections"
%   roots_ending_in_i_y_and_iy_2 mabi — grammar: "roots ending in -i, -y and -iy"
%   roots_ending_in_i_y_and_iy_3 guridi — grammar: "roots ending in -i, -y and -iy"
%   roots_ending_in_u_a_u_a_2    margu, rjunarjgara — grammar: "roots ending in u, a, u:, a:"
%   roots_ending_in_u_a_u_a_3    durgu — grammar: "roots ending in u, a, u:, a:"
% Irregular (listed in data/nouns.exceptions.tsv): bama, biwi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
