% rules/oti/nouns.lp
% Oti nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41580: Grammaire du nawdm (2018), pages 37, 43, 44, 66
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   class_1                      fɔg — grammar: "class_1"
%   class_4                      bur — grammar: "class_4"
%   class_15                     buu — grammar: "class_15"
%   class_4_2                    feer — grammar: "class_4"
%   class_5                      goo — grammar: "class_5"
%   class_14_class_19            hag — grammar: "class_14, class_19"
%   class_21                     nam — grammar: "class_21"
%   class_6                      nyam — grammar: "class_6"
%   class_12                     soo — grammar: "class_12"
%   class_21_2                   taam — grammar: "class_21"
%   class_4_3                    ɦiil — grammar: "class_4"
%   class_22_class_23            daa — grammar: "class_22, class_23"
%   cl_a_cl_ba                   fɔga — grammar: "CL.ɦa / CL.ba"
%   class_10                     jag — grammar: "class_10"
%   cl_a_cl_ba_2                 kunida — grammar: "CL.ɦa / CL.ba"
%   cl_ku_cl_t                   moogu — grammar: "CL.ku / CL.t"
%   cl_a_cl_ba_3                 mɛtra — grammar: "CL.ɦa / CL.ba"
%   cl_ku_cl_t_2                 namgu — grammar: "CL.ku / CL.t"
%   cl_ka_cl_hi                  nyiiga — grammar: "CL.ka / CL.hi"
%   cl_a_cl_ba_4                 sa — grammar: "CL.ɦa / CL.ba"
%   cl_a_cl_ba_5                 teela — grammar: "CL.ɦa / CL.ba"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
