% rules/siw/verbs.lp
% Motuna verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289569: A Grammar of Motuna (Bougainville, Papua New Guinea) (1994), pages 341, 343, 344, 345, 346, 347, 348, 351, 352, 353, 354, 355, 372, 378, 387
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   turu_type                    turu
%   maa_type                     maa
%   definite_future              hee — grammar: "Definite Future"
%   heemoroko_type               heemoroko
%   kui_type                     kui
%   no_type                      no
%   paa_type                     paa
%   wo_type                      wo
%   woro_type                    woro
%   immediate_future             heemoroko-ng — grammar: "Immediate Future"
%   future                       heeno-ng — grammar: "Future"
%   no_r_opee_type               no-r-opee
%   noh_u_u_ng_type              noh-u-u-ng
%   ku_type                      ku
% Irregular (listed in data/verbs.exceptions.tsv): noh-u-m-wo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
