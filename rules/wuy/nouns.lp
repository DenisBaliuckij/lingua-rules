% rules/wuy/nouns.lp
% Wauyai Maˈya; Batta nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289383: Sketch grammars of Wauyai Maˈya and Batta: Two undocumented Austronesian languages of Raja (2026), pages 15, 18, 31, 36, 37, 39
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   body_part                    kaˈli³f — grammar: "Body part"
%   inalienable_possessive_morphology təbu¹² — grammar: "Inalienable possessive morphology"
%   inalienable_possessive_morphology_2 wo³w — grammar: "Inalienable possessive morphology"
%   kin_term                     taˈbyu¹² — grammar: "Kin term"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
