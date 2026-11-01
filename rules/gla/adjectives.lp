% rules/gla/adjectives.lp
% Scottish Gaelic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79404: Forbes's Double Grammar of English and Gaelic / Gramar Dùbailt Beurla 'us Gàelig (1843), pages 52, 64, 67, 71, 72, 76, 79, 82, 83, 87, 88, 89, 97, 103, 124, 125, 140, 143, 144, 150, 151
%   doc 388654: Scottish Gaelic (2010), pages 27, 28, 29, 31, 32, 35, 36, 39, 43, 44
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   type_i                       dubh — grammar: "Type I"
%   type_iii                     fada — grammar: "Type III"
%   type_iii_2                   glic — grammar: "Type III"
%   type_ii                      salach — grammar: "Type II"
%   type_iii_3                   soilleir — grammar: "Type III"
%   possessives                  mo — grammar: "possessives"
%   dearg_type                   dearg
%   borb_type                    borb
%   cinnteach_type               cinnteach
%   dall_type                    dall
%   beag_type                    beag
%   ban_type                     ban
%   crion_type                   crion
%   cruinn_type                  cruinn
%   daor_type                    daor
%   deas_type                    deas
%   geal_type                    geal
%   lag_type                     lag
%   trom_type                    trom
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
