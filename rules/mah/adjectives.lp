% rules/mah/adjectives.lp
% Marshallese adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389818: Marshallese Language Training Manual (1992), pages 71, 72, 73
%   doc 389819: Practical Marshallese (2004), pages 20, 22, 23, 24, 26, 36, 96, 112, 124, 130, 140, 142, 144, 152, 156, 158, 172, 174, 202
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   aetok_type                   aetok
%   aidik_type                   aidik
%   ainig_type                   ainig
%   dik_type                     dik
%   kilep_type                   kilep
%   nig_type                     nig
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
