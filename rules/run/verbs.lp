% rules/run/verbs.lp
% Rundi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73916: Kirundi Basic Course: Student Text (1960), pages 19, 83, 498
%   doc 73936: Kinyarwanda and Kirundi Comparative Grammar (2007), pages 35, 140, 181, 183, 199, 203, 204, 206, 332
%   doc 93529: Apprendre la langue Rwanda (1975), pages 101, 261, 311
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dukora_type                  dukora
%   gusoma_type                  gusoma
%   vuga_type                    vuga
%   gukora_type                  gukora
% Irregular (listed in data/verbs.exceptions.tsv): fite, zi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
