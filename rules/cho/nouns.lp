% rules/cho/nouns.lp
% Choctaw nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389782: The Elements of Choctaw (1974), pages 39, 54, 205
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   body_part_terms_with_passive_prefixes konla, nishkin, ttahchi, yyi — grammar: "Body Part Terms with Passive Prefixes"
%   kinterms_with_passive_prefixes nakfish, yyop — grammar: "Kinterms with Passive Prefixes"
%   kinterms_with_passive_prefixes_2 pok — grammar: "Kinterms with Passive Prefixes"
%   kinterms_with_passive_prefixes_3 pokni — grammar: "Kinterms with Passive Prefixes"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
