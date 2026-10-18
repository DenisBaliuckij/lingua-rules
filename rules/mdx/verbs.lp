% rules/mdx/verbs.lp
% Dizi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 67510: An Annotated Edition of Father G. Toselli's Dizi Grammar (2014), pages 91, 92, 93, 128, 129
%   doc 388485: An Overview of Central Dizin Phonology and Morphology (2005), pages 103, 126, 129
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   bs_type                      bɑːs
%   verbi_che_hanno_la_radicale_in_m_finale kam-k — grammar: "verbi che hanno la radicale in m finale"
%   bs1_type                     bɑːs¹
%   ghie_k_type                  ghie-k
%   hidre_k_type                 hidre-k
%   ats_k_type                   ats-k
%   bas_k_type                   bas-k
%   civosh_k_type                civosh-k
%   dir_k_type                   dir-k
%   kays_k_type                  kays-k
%   kbsh_k_type                  kbsh-k
%   kies_k_type                  kies-k
%   kiyat_k_type                 kiyat-k
%   shor_k_type                  shor-k
%   tciur_k_type                 tciur-k
%   tsats_k_type                 tsats-k
%   ysh_k_type                   ysh-k
% Irregular (listed in data/verbs.exceptions.tsv): ta-k
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
