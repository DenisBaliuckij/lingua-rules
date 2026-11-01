% rules/zko/verbs.lp
% Kott verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389864: Abriß der Kottischen Grammatik (1998), pages 75, 76, 77, 85, 86, 110, 112, 115, 129, 134, 136, 139, 140, 143, 147, 154
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   hapi_type                    hapi
%   augan_type                   augan
%   c1_konjugation_der_einfachen_intransitiv iga:j — grammar: "1. Konjugation der einfachen Intransitiva mit stammbildenden Determinativen"
%   te_n_type                    te:n
%   to_k_type                    to:k
%   tjata_dje_gina_type          tjata:dje:gina
%   a_gi_c_type                  a-gi:ç
%   a_i_type                     a-‚i
%   ci_type                      çi
%   a_tai_j_a_type               a:-tªi-j-a
%   a_k_type                     a:k
%   agatalikia_type              agatalikia
%   anagej_a_type                anagej-a
%   anapi_j_a_type               anapi-j-a
%   b_a_tai_a_type               b-a-tªi-a
%   dapi_j_a_type                d∞api-j-a
%   an_i_gej_a_type              an-i-gej-a
%   ota_type                     ota
%   gej_a_type                   gej-a
%   a_n_a_tai_j_a_type           a:-n-a-tªi-j-a
%   a_liga_type                  a:liga
%   aitean_type                  aiteän
%   hama_type                    hama¿
%   m_a_n_a_tai_a_type           m-a-n-a-tªi-a
%   taalapaja_type               tªalapaja
%   taacapaja_type               tªaçapaja
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
