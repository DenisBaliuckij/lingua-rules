% rules/kng/verbs.lp
% Kikongo (Kisolongo dialect) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 830449: Gramática da língua do Congo (kikongo) : dialecto kisolongo (1870), pages 32, 33, 56, 58, 70, 74, 75, 76, 77, 84, 85, 86, 89, 90, 92, 125
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   c2_o_classe_dos_verbos       kenda — grammar: "2.º classe dos verbos"
%   tuma_type                    tuma
%   kuenda_type                  kuenda
%   forma_complexa_do_verbo_tala_ku_n_tala tala — grammar: "Forma complexa do verbo TALA — KU-N-TALA"
%   ku_tala_type                 ku-tala
%   ku_tu_tala_type              ku-tu-tala
%   kala_type                    kala
%   c4_classe_dos_verbos_voz_activa_forma_si sona — grammar: "4." classe dos verbos— Voz activa — Forma simples"
%   tota_type                    tota
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
