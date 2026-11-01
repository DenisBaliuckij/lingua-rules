% rules/hye/verbs.lp
% Armenian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44437: Armenische Grammatik: West-, Ost- und Altarmenisch (1959), pages 73, 79, 80, 93, 94, 98, 128, 253, 254, 255
%   doc 388857: Armenian: Modern Eastern Armenian (2009), pages 89, 90, 91, 93, 94, 95, 145, 148, 165, 206, 228, 255, 256, 268, 269, 270, 300
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_type                   ունիմ
%   class_type_2                 ըլլալ
%   dynamic                      gnal — grammar: "dynamic"
%   class_type_3                 կենալ
%   class_type_4                 նստիլ
%   i_konjugation                լսել — grammar: "I. Konjugation"
%   ii_konjugation               խօսիլ — grammar: "II. Konjugation"
%   iii_konjugation              կարդալ — grammar: "III. Konjugation"
%   simple_in_el                 gr — grammar: "Simple in -el"
% Irregular (listed in data/verbs.exceptions.tsv): em, unem
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
