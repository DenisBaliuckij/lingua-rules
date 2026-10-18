% rules/ale/adjectives.lp
% Aleut adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 898128: Opyt grammatiki aleutsko-lisʹevskago iazyka (1840), pages 34, 43, 44
%   doc 898142: Die Sprache der Aleuten und Fuchsinseln (1884), pages 35, 36, 58, 59, 60, 61, 62, 68, 69, 70, 71, 72, 73, 76, 82, 83
%   doc 898149: Aleut Grammar: Unangam Tunuganaan Achixaasix. A Descriptive Reference Grammar of the Alteu (1997), pages 73
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   class_type                   игаманакъ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
