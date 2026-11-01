% rules/lav/adjectives.lp
% Latvian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 66450: Latviešu valodas gramatika (2013), pages 548, 549
%   doc 73759: Latvian Grammar (2021), pages 40, 58, 86, 150, 185, 195, 203, 227, 231, 233, 261, 293
%   doc 389070: A short grammar of Latgalian (2011), pages 18, 21, 22, 23, 27, 31, 33
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   definite_type                mazais, skaļais — grammar: "definite type"
%   indefinite_type              mazs, skaļš — grammar: "indefinite type"
%   hard_stem_indefinite         mozs — grammar: "hard stem (indefinite)"
%   ej_stem_masculine            senejais — grammar: "-ej- stem (masculine)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
