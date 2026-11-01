% rules/bin/nouns.lp
% Bini nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 64820: Bininj Gun-wok: a pan-dialectal grammar of Mayali, Kunwinjku and Kune (2003), pages 365, 389
%   doc 847311: A Bini Grammar, Part 3: Lexemics (1963), pages 77, 78, 130, 153
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   oko_type                     oko
%   e_pluralizers_a_singulars    agen — grammar: "e-pluralizers (a-singulars)"
%   a_pluralizers_o_singulars    akhigbhan — grammar: "a-pluralizers (o-singulars)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
