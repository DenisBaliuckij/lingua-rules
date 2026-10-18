% rules/eud/verbs.lp
% Eudeve verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289664: Grammatical Sketch of the Heve Language (1850), pages 23, 25, 26, 27, 46, 47, 53, 54, 66, 105
%   doc 849835: A grammatical sketch of the Heve language (1911), pages 17, 18, 20, 21
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   hiesguan_type                hiésguan
%   hiosguamne_type              hiósguamne
%   eram_type                    erám
%   second_declension            hiósguam — grammar: "second declension"
%   second_declension_2          hiósguamru — grammar: "second declension"
%   second_declension_3          hiósguan — grammar: "second declension"
%   completive_verb              todam — grammar: "completive verb"
%   estimative_verb              tziui — grammar: "estimative verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
