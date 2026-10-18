% rules/ktb/verbs.lp
% Kambaata verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38440: Das K'abeena: Deskriptive Grammatik einer hochlandostkuschitischen Sprache (1985), pages 65, 66, 100, 101, 103, 123, 124, 125, 126, 127, 130, 142, 143, 164, 212, 217, 234, 243
%   doc 69380: A Grammar of Kambaata (Ethiopia) Part 1: Phonology, Nominal Morphology and Non-verbal Pred (2005), pages 172, 222, 229, 241, 281, 282, 314, 321, 383, 384, 409, 424, 447
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ga_type                      ga
%   progressivkonverb            he — grammar: "Progressivkonverb"
%   progressivkonverb_2          ih — grammar: "Progressivkonverb"
%   progressivkonverb_3          °a — grammar: "Progressivkonverb"
%   a_type                       a
%   aa_type                      aa
%   ass_type                     ass
%   ekee_n_type                  ekee'n
%   re_type                      re
%   y_type                       y
%   oro_type                     oro
% Irregular (listed in data/verbs.exceptions.tsv): yoo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
