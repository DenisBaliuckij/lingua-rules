% rules/rmy/adjectives.lp
% Albanian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19145: A Grammar of North West Lovari Romani / Gramatika severozápadní olaštiny (lovárštiny) (2012), pages 70, 71, 73, 74, 75, 77, 78, 150, 151, 163
%   doc 389388: A Grammatical Sketch of Albanian for students of Indo-European (2012), pages 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 28
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   consonant_oikoclitic_adjective_class šukár — grammar: "Consonant Oikoclitic Adjective Class"
%   xenoclitic_with_i_plural_a_plural vineto — grammar: "xenoclitic with i-plural / a-plural"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
