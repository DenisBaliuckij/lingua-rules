% rules/pnb/verbs.lp
% Western Panjabi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 905975: Grammar and Dictionary of Western Panjabi as Spoken in the Shahpur District with Proverbs, (1898), pages 16, 17, 21, 22, 24, 28, 29, 54, 58, 59, 60, 61
%   doc 924603: Grammar and Dictionary of Western Panjabi, as spoken in the Shahpur District, with Proverb (1898), pages 22, 23, 25, 54, 59, 60, 61, 62
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   aorist_tense                 kar — grammar: "Aorist Tense"
%   aorist_passive               marl — grammar: "Aorist Passive"
%   auxiliary_verb               h — grammar: "Auxiliary Verb"
%   future_passive               mar — grammar: "Future Passive"
%   a_type                       a
%   ghinn_type                   ghinn
%   t_k_type                     t&k
%   tur_type                     tur
% Irregular (listed in data/verbs.exceptions.tsv): leh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
