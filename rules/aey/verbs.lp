% rules/aey/verbs.lp
% Amele verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 651530: Amele RRG Grammatical Sketch (2016), pages 79, 84, 157, 158, 159, 161, 214, 215, 217, 218, 223, 231, 412
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   regular_verb_inflections_of_realis_categ fec — grammar: "Regular Verb Inflections of Realis Categories"
%   regular_verb_inflections_of_realis_categ_2 hoc — grammar: "Regular Verb Inflections of Realis Categories"
%   nij_e_type                   nij-eɁ
%   buj_e_type                   buj-eɁ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
