% rules/apy/verbs.lp
% Apalaí verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41209: Apalaí Verb Structure: Preliminary Analysis (2009), pages 13, 14
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   stative_declarative_verb     a — grammar: "stative declarative verb"
%   stative_declarative_verb_2   ase — grammar: "stative declarative verb"
%   distant_past_tense           yka-ne — grammar: "distant past tense"
%   non_transitive_declarative_verb yka-no — grammar: "non-transitive declarative verb"
%   stative_declarative_verb_3   ake-ne — grammar: "stative declarative verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
