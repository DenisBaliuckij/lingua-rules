% rules/kbd/verbs.lp
% Kabardian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388908: A Short Grammar of Kabardian (2009), pages 22, 52, 71
%   doc 820832: A Short Grammar of East Circassian (Kabardian) (2010), pages 18, 25, 46, 64, 89
%   doc 852567: A Grammar of the Kabardian Language (1992), pages 80, 94, 95
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ssn_type                     śəsən
%   k_wa_type                    k'wa
%   k_wa_type_2                  k'wā
%   sn_type                      sən
%   transitive_bivalent_dynamic_verb dən — grammar: "transitive (bivalent dynamic) verb"
%   intransitive_monovalent_dynamic_verb k'wan — grammar: "intransitive monovalent dynamic verb"
%   class_b_intransitive_bivalent_verbs wa-n — grammar: "CLASS B - intransitive bivalent verbs"
%   intransitive_stative_verb    śətən — grammar: "intransitive stative verb"
%   intransitive_bivalent_dynamic_verb źan — grammar: "intransitive bivalent (dynamic) verb"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
