% rules/knj/verbs.lp
% Akateko verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 106212: Snaahil Kuyu Ti'e Akateko: Gramática Descriptiva del Idioma Akateko (2013), pages 47, 48, 49, 58, 59, 61, 71, 72, 73, 74, 94, 95, 96, 97, 98, 99, 100, 101, 112, 113, 114, 115, 126
%   doc 106214: Gramática Normativa Akateka (2015), pages 179, 255, 262, 264, 265, 266, 271, 272, 282, 300, 301, 302, 303, 309, 310, 311
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   il_type                      il
%   oq_type                      oq
%   c                            b’ey, b'ey — grammar: "/-C"
%   kol_type                     kol
%   lo_type                      lo
%   v                            O — grammar: "/-V"
%   c_2                          aw — grammar: "/-C"
%   kolo_type                    kolo
%   weyan_type                   weyan
%   transitive                   pix — grammar: "transitive"
%   uk_type                      uk
%   kolan_type                   kolan
%   lalantowawihel_type          lalantowawihel
%   tihojin_awojan_type          tihojin'awojan
%   tihojin_oktojan_type         tihojin'oktojan
%   wey_type                     wey
%   lalantob_eyel_type           lalantob'eyel
%   qal_type                     qal
%   transitive_2                 mitx — grammar: "transitive"
%   intransitive                 b'eyan — grammar: "intransitive"
%   beyan_type                   b’eyan
%   transitive_3                 ij — grammar: "transitive"
%   ila_type                     ila
%   maqa_type                    maq’a
%   intransitive_2               oq'an — grammar: "intransitive"
%   oqan_type                    oq’an
%   intransitive_3               su'te — grammar: "intransitive"
%   transitive_4                 tek — grammar: "transitive"
%   intransitive_4               uk'e — grammar: "intransitive"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
