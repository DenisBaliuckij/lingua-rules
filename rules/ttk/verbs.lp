% rules/ttk/verbs.lp
% Namtrik verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16508: Una gramática de la lengua namtrik de Totoró. Lengua barbacoa hablada en los Andes colombi (2019), pages 160, 198, 329, 393, 488
%   doc 16514: Una gramática de la lengua namtrik de Totoró : lengua barbacoa hablada en los Andes colomb (2019), pages 161, 199, 330, 394, 489
%   doc 289490: Una gramática de la lengua namtrik de Totoró: lengua barbacoa hablada en los Andes colombi (2019), pages 161, 199, 330, 394, 489
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verbos_egoforicos_de_experiencia_tipo_2 pia — grammar: "Verbos egofóricos de experiencia tipo 2"
%   clase_1                      ishkek — grammar: "clase 1"
%   clase_1_2                    isuk, its, kar, katɨsr ... — grammar: "clase 1"
%   clase_1_3                    lul — grammar: "clase 1"
%   clase_1_4                    lusr — grammar: "clase 1"
% Irregular (listed in data/verbs.exceptions.tsv): kua, lira, pishira, yo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
