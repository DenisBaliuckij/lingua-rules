% rules/mai/verbs.lp
% Maithili verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 920726: An Introduction to the Maithili Language: A Grammar, Chrestomathy & Vocabulary (1881), pages 23, 36, 70, 71, 74, 75, 76, 77, 78, 79, 82, 85, 86, 91, 92, 94, 96, 106, 110
%   doc 937559: Maithili Grammar (n.d.), pages 16, 17, 23
%   doc 937587: An introduction to the Maithili dialect of the Bihari language as spoken in North Bihar (1870), pages 116, 120
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   form_i                       dekh'na — grammar: "Form I"
%   intransitive_verb            sut — grammar: "intransitive verb"
%   transitive_verb              dekhab — grammar: "transitive verb"
%   intransitive_verb_2          sutal — grammar: "intransitive verb"
%   roots_ending_in_vowels       paul — grammar: "roots ending in vowels"
%   transitive_verb_past_tense_form_i_mascul dekhal — grammar: "Transitive Verb, Past Tense Form I (Masculine)"
%   form_i_2                     dekhitia — grammar: "Form I"
%   form_i_3                     rah — grammar: "Form I"
%   bais_type                    bais
% Irregular (listed in data/verbs.exceptions.tsv): ach, deb
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
