% rules/pam/verbs.lp
% Pampanga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 896026: Gramatica qg sabing castila, t, capampangan (n.d.), pages 12, 13, 14, 23, 30, 36, 37, 72
%   doc 896043: Arte de la lengua Pampanga (1765), pages 33, 37, 39, 43, 44, 45, 46, 100
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   partir_type                  partir
%   c1st_conjugation_ar          acertar — grammar: "1st conjugation (-ar)"
%   c2nd_conjugation_er          nacer — grammar: "2nd conjugation (-er)"
%   querer_type                  querer
%   c3rd_conjugation_ir          conducir — grammar: "3rd conjugation (-ir)"
%   am_are_type                  am-are
%   am_e_type                    am-e
%   c1st_conjugation_ar_2        contar — grammar: "1st conjugation (-ar)"
%   am_a_type                    am-a
%   batbat_type                  batbat
%   cutang_type                  cutang
%   gaga_type                    gaga
%   pasiag_type                  pasiag
%   tugtug_type                  tugtug
%   uangis_type                  uangis
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
