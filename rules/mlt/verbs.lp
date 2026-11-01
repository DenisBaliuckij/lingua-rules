% rules/mlt/verbs.lp
% Maltese verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 28917: The Grammar of Maltese Prepositions (2025), pages 239
%   doc 80028: Basic Maltese Grammar (n.d.), pages 4, 14, 16, 19, 24, 25
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kun_type                     kun
%   quadriliteral_verb           fixkel — grammar: "quadriliteral verb"
%   pattern_7_implied_by_context_of_reflexiv ftaqar — grammar: "Pattern 7 (implied by context of reflexive/passive 't' insertion)"
%   pattern_8                    sfar — grammar: "Pattern 8"
%   wasal_type                   wasal
%   gandu_type                   għandu
% Irregular (listed in data/verbs.exceptions.tsv): ha
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
