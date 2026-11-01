% rules/sxr/nouns.lp
% Lha'alua nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 174: A grammar of Lha'alua, an Austronesian language of Taiwan (2012), pages 184, 185, 291, 292
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   person_names                 aavi — grammar: "person names"
%   kinship_terms                ama’a — grammar: "kinship terms"
%   person_names_2               apée — grammar: "person names"
%   person_names_3               eleke — grammar: "person names"
%   person_names_4               elengane — grammar: "person names"
%   kinship_terms_2              ina’a — grammar: "kinship terms"
%   person_names_5               inguruu — grammar: "person names"
%   person_names_6               kilhakilhau — grammar: "person names"
%   person_names_7               kuate — grammar: "person names"
%   person_names_8               langui — grammar: "person names"
%   person_names_9               lhaa’u — grammar: "person names"
%   person_names_10              lhatingai — grammar: "person names"
%   person_names_11              na’apu — grammar: "person names"
%   person_names_12              palii — grammar: "person names"
%   person_names_13              pauli — grammar: "person names"
%   person_names_14              pii’i — grammar: "person names"
%   person_names_15              takanau — grammar: "person names"
%   person_names_16              tamaulhu — grammar: "person names"
%   kinship_terms_3              tamu’u — grammar: "kinship terms"
%   person_names_17              uusu — grammar: "person names"
%   person_names_18              vanau — grammar: "person names"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
