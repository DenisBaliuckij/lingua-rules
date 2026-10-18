% rules/mgz/verbs.lp
% Mbugwe verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 91656: A Grammatical Sketch of Mbugwe: Bantu F34, Tanzania (1985), pages 20, 21, 22
%   doc 91657: A Linguistic Description of Mbugwe with Focus on Tone and Verbal Morphology (2018), pages 109
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kukenda_type                 kukenda
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
