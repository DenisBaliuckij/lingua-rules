% rules/wrl/verbs.lp
% Warlmanpa verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 793633: A Grammatical Description of Warlmanpa: A Ngumpin-Yapa Language Spoken around Tennant Cree (2021), pages 124, 228, 229, 342
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   class_3                      jutpinja, kapinja, linja, pinja ... — grammar: "Class 3"
%   class_1d                     kanja — grammar: "Class 1d"
%   class_2                      kiyanja, kumanja, pakanja, yanja — grammar: "Class 2"
%   class_3_2                    nyanja — grammar: "Class 3"
%   class_2_2                    wayinja — grammar: "Class 2"
% Irregular (listed in data/verbs.exceptions.tsv): jinja, palinja, panja, partinja, wanga
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
