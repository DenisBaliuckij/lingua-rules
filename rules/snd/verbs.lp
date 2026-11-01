% rules/snd/verbs.lp
% Sindhi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79622: سنڌي بوليء جو گرامر (Sindhi Boli-a- Jo Grammer) (2011), pages 255, 264, 271, 275, 285, 286
%   doc 924647: Grammar of the Sindhi Language Compared with the Sanskrit, Prakrit and the Cognate Indian  (1872), pages 178, 227, 242, 276, 337, 372, 375, 381, 383, 384, 391, 392, 401, 402, 426, 429
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   simple_aorist                thi — grammar: "Simple Aorist"
%   class_type                   سٽهڻ
%   compound_future_definite     chad-anu — grammar: "Compound Future (Definite)"
%   hundasu_type                 hundasu
%   thiasu_type                  thiasu
%   definite_future              thind — grammar: "Definite Future"
%   the_pluperfect               halia — grammar: "The Pluperfect"
%   the_future                   hundu-se — grammar: "THE FUTURE"
%   thiase_type                  thiase
%   indefinite_present           ہون — grammar: "Indefinite Present"
%   the_habitual_aorist          hose — grammar: "THE HABITUAL AORIST"
%   hundisa_type                 hundisa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
