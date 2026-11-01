% rules/mic/nouns.lp
% Micmac nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92319: The Micmac Grammar of Father Pacifique (1990), pages 45, 46, 58, 59, 61, 63, 65, 84, 94, 102, 110, 125, 126, 128, 129, 154, 162, 163
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kesik_type                   kesik
%   kisikui_skw_type             kisikui'skw
%   l_nu_type                    l'nu
%   nink_type                    nink
%   sib_type                     sib
%   e_pit_type                   e'pit
%   eksit_type                   eksit
%   kinaw_type                   kinaw
%   kinawi_skw_type              kinawi'skw
%   kisikuq_type                 kisikuq
%   pipnaan_type                 pipnaan
%   savo_k_type                  savo'k
%   ta_n_type                    ta'n
%   wlo_n_type                   wlo'n
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
