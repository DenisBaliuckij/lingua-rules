% rules/suq/nouns.lp
% Tirmaga nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296450: Aspects of Tirmaga Grammar (n.d.), pages 60, 65, 66, 69, 70, 73, 90
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inherently_possessed_nouns   cogo — grammar: "inherently possessed nouns"
%   bekay_type                   bekay
%   buga_type                    buga
%   dadab_type                   dadab
%   dora_type                    dora
%   gaha_type                    gaha
%   ger_type                     ger
%   giroq_type                   giroQ
%   go_type                      go
%   gotay_type                   gotay
%   loggor_type                  loggor
%   lombu_type                   lombu
%   luddum_type                  luddum
%   marcan_type                  marcan
%   reh_type                     reh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
