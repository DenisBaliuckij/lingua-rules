% rules/wne/verbs.lp
% Pashto verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389680: Descriptive Grammar of Pashto and its Dialects (2014), pages 138, 144, 146, 149, 190, 253, 279, 280, 282, 283, 284, 285, 287, 288, 289, 291, 297, 299, 300
%   doc 389681: Pashto (1997), pages 8, 9, 10, 11, 18, 19, 24
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   be_type                      be
%   first_conjugation_transitive niwə́l — grammar: "first conjugation (transitive)"
%   second_conjugation           prewatə́l — grammar: "second conjugation"
%   third_conjugation            roxānawə́l — grammar: "third conjugation"
%   past_participle              tləl — grammar: "Past participle"
%   present_participle           ḍārawəl — grammar: "Present participle"
%   first_conjugation_transitive_2 niwəl — grammar: "first conjugation (transitive)"
%   second_conjugation_2         prewatəl — grammar: "second conjugation"
%   rasedl_type                  rasedəl
%   third_conjugation_2          roxānawəl — grammar: "third conjugation"
%   regular_intransitive_verb    ras-ed-Iras-ed-:l — grammar: "regular intransitive verb"
%   regular_simple_verbs         tie — grammar: "regular simple verbs"
%   second_conjugation_3         prekawə́l — grammar: "second conjugation"
%   strong_verb_bases            wṛəl — grammar: "Strong verb bases"
% Irregular (listed in data/verbs.exceptions.tsv): kill, show, wear
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
