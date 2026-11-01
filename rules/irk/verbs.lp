% rules/irk/verbs.lp
% Iraqw verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38320: A Grammar of Iraqw (1992), pages 89, 92
%   doc 296346: A Sketch of Iraqw Grammar (2007), pages 11, 12, 13, 16, 17, 18, 21, 22
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   be_type                      be
%   firiimiika_type              firiimiika
%   firiirnaaka_type             firiirnaaka
%   doohlaaka_type               doohlaaka
%   doohliika_type               doohliika
%   doohl_type                   dóohl
%   tlawaaka_type                tlawaaka
%   tlawiika_type                tlawiika
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
