% rules/ku_hewrami/verbs.lp
% Northern Kurdish (Kurmanji) (Hewrami dialect) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 349: A grammar of Hewramî (2026), pages 48, 107, 253, 293, 303, 304, 317, 319, 320, 323, 331, 332, 333, 334, 338
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   arey_type                    arđey
%   kerey_type                   kerđey, luway
%   n_type                       n
%   yaw_type                     yáw
%   bus_type                     bûs
%   ker_type                     kêr
%   witey_type                   witey
%   wit_type                     wit
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
