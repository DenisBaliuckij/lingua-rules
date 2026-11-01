% rules/snd/adjectives.lp
% Sindhi adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79622: سنڌي بوليء جو گرامر (Sindhi Boli-a- Jo Grammer) (2011), pages 255, 264, 271, 275, 285, 286
%   doc 924647: Grammar of the Sindhi Language Compared with the Sanskrit, Prakrit and the Cognate Indian  (1872), pages 178, 227, 242, 276, 337, 372, 375, 381, 383, 384, 391, 392, 401, 402, 426, 429
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjectives_ending_in_i       dukhī — grammar: "Adjectives ending in I"
%   adjectives_ending_in_e_i     hikamuthe — grammar: "Adjectives ending in e (i)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
