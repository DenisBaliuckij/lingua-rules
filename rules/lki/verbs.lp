% rules/lki/verbs.lp
% Laki (Harsin) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 894932: The Laki variety of Harsin: Grammar, texts, lexicon (2021), pages 184, 185, 186, 187, 190, 192, 193, 194, 195, 196, 202, 204, 205
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   da_type                      dā
%   dast_type                    dāšt
%   nist_type                    nīšt
%   at_type                      āt
%   bu_type                      bu
%   kird_type                    kird
%   bin_type                     bīn
% Irregular (listed in data/verbs.exceptions.tsv): dāštin, č
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
