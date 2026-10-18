% rules/lmc/verbs.lp
% Limilngan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289484: A grammar of Limilngan: A language of the Mary River Region, Northern Territory, Australia (2001), pages 31, 62, 65, 71, 79, 94, 95, 98, 104
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ima_type                     ima
%   igu_gi_type                  igu-gi
%   potential_auxiliary          ambulding, anbiny, ing — grammar: "potential auxiliary"
%   potential_auxiliary_2        anbalk, ilk — grammar: "potential auxiliary"
%   iyuldarri_type               iyuldarri
%   lula_rri_type                lula-rri
%   ni_type                      ni
%   mitjba_type                  mitjba
%   potential_auxiliary_3        alatj — grammar: "potential auxiliary"
%   potential_auxiliary_4        ingang — grammar: "potential auxiliary"
%   iyulkga_type                 iyulkga
%   potential_auxiliary_5        jiyuk — grammar: "potential auxiliary"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
