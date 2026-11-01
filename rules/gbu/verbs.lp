% rules/gbu/verbs.lp
% Gaagudju verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3239: A Grammar of Gaagudju (2002), pages 175, 203, 212, 231, 256, 278, 372
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   wa_auxiliary                 gornya — grammar: "-wa auxiliary"
%   gore_garra_type              gore-garra
%   ba_auxiliary                 garlaa — grammar: "-ba auxiliary"
%   goro_garre_ni_type           goro-garre-ni
%   ga_ba_auxiliary              mardee — grammar: "-ga-ba auxiliary"
%   baleburrbu_type              baleburrbu
%   balolburrbu_type             balolburrbu
%   ba_auxiliary_2               djarroonggo — grammar: "-ba auxiliary"
%   gadawarrarrama_type          gadawarrarrama
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
