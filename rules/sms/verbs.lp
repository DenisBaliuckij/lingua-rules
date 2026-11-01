% rules/sms/verbs.lp
% Skolt Saami verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388174: A Grammar of Skolt Saami (2010), pages 115, 122, 128, 129, 131, 135, 145, 146, 152, 157, 160, 163, 175, 220, 229, 251, 252, 253, 256, 269, 326
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   leed_type                    leeʹd
%   class_1b_verb                njorggad — grammar: "Class 1B verb"
%   class_1a_verb                teâvõõttâd — grammar: "Class 1A verb"
%   class_4_group_c_verb         ääʹveed — grammar: "Class 4, Group C verb"
%   kuullad_type                 kuullâd
%   class_1c_verb                juʹrdded — grammar: "Class 1C verb"
%   class_1a                     viikkâd — grammar: "Class 1A"
%   class_1b                     kuärrad — grammar: "Class 1B"
%   class_1c                     kââʹǩǩed — grammar: "Class 1C"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
