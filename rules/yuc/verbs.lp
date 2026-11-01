% rules/yuc/verbs.lp
% Yuchi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 68820: A Grammar of Euchee (Yuchi) (n.d.), pages 144, 171, 178, 192, 220, 225, 226, 227, 228, 259, 260, 261, 263, 305, 508
%   doc 389123: A Grammar of Euchee (Linn) (1902), pages 144, 178, 220, 224, 225, 227, 228, 259, 260, 261, 262, 305
%   doc 389124: Yuchi (1934), pages 43, 44
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   a_type                       a
%   no_type                      no
%   gele_type                    gele
%   aele_type                    aele
%   la_i_type                    la'i
%   yude_type                    yude
%   zle_type                     zle
%   gd_type                      gd^
%   gotwa_type                   gotwa
%   hi_verb                      hisha — grammar: "hi- Verb"
%   h_ala_gola_type              h'ala'gola
%   hi_di_ca_type                hi'di-ca
%   agwa_type                    agwa
%   dzehi_type                   dzehi?
%   gojrhla_type                 gojrhla
%   gote_de_type                 gote'de
%   hi_do_sti_type               hi'do-sTi
% Irregular (listed in data/verbs.exceptions.tsv): gonthla, gorltla, gothla, hi'doki, hitliUe, ke ci, la’i, rhla, thla
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
