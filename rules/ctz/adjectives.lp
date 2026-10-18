% rules/ctz/adjectives.lp
% Zacatepec Chatino adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16455: The Phonology and Morphology of Zacatepec Eastern Chatino (2015), pages 379, 399, 436
%   doc 389245: Grammatical Sketch of Zacatepec Chatino (2009), pages 71, 78
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   tone_class_8_lh              tsaʔwě — grammar: "Tone Class 8: /LH/"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
