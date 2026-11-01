% rules/kry/verbs.lp
% Kryts verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389309: Grammaire Kryz (Langue caucasique d'Azerbaïdjan, dialecte d'Alık) (2014), pages 139, 162, 163
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   vu_type                      vu
%   axhric_type                  ˤaxhric
%   participes_substantives_imperfectif liyi — grammar: "participes substantivés (imperfectif)"
%   participes_en_a_substantives ula — grammar: "participes en -a substantivés"
%   participes_substantives_perfectif vu-yi — grammar: "participes substantivés (perfectif)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
