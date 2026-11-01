% rules/hbs/verbs.lp
% Serbo-Croatian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23142: Ilirska slovnica (1854), pages 209
%   doc 105570: Grammatica della lingua serbo-croata (illirica) (1867), pages 40, 50, 72, 74, 75, 82, 88, 96, 97, 98, 99, 100, 101, 102, 103, 135
%   doc 389103: Bosnian, Croatian, Serbian, a Grammar: With Sociolinguistic Commentary (2010), pages 111, 132, 154, 156, 157, 160, 163, 168, 310, 317, 318, 319, 320, 321, 322, 323, 324, 325
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   e_conjugation_group_2a       jesti — grammar: "e-conjugation (group 2a)"
%   type_15b                     stići — grammar: "Type 15b"
%   type_12_ekavian              ümeti — grammar: "Type 12 (ekavian)"
%   type_6                       piti — grammar: "Type 6"
%   type_10                      brati — grammar: "type 10"
%   type_8a                      kupovati — grammar: "Type 8a"
%   type_15a                     teći — grammar: "Type 15a"
%   type_1                       gledati — grammar: "Type 1"
%   type_8b                      kazïvati — grammar: "Type 8b"
%   biti_type                    biti
%   hteti_ekavian                hteti — grammar: "HTETI (ekavian)"
%   type_3_ekavian               videti — grammar: "Type 3 (ekavian)"
%   type_3_ijekavian             vidjeti — grammar: "Type 3 (ijekavian)"
%   infinitives_in_sti           sesti, pasti, sjesti — grammar: "Infinitives in -sti"
%   temi_finiti_in_a             hvaliti — grammar: "temi finiti in a"
%   cuti_type                    čuti
%   temi_finiti_in_a_2           čuvati — grammar: "temi finiti in a"
%   infinitives_in_sti_2         grepsti — grammar: "Infinitives in -sti"
%   infinitives_in_sti_3         plësti — grammar: "Infinitives in -sti"
%   infinitives_in_sti_4         rasti — grammar: "Infinitives in -sti"
%   plesti_type                  plesti
%   kleti_type                   kleti
%   pletiti_type                 pletiti
%   type_15b_type_7              dići — grammar: "type 15b / type 7"
%   type_1_2                     igrati — grammar: "type 1"
%   e_conjugation_group_2a_2     pisati — grammar: "e-conjugation (group 2a)"
%   type_15b_type_7_2            slegnuti, trgnuti — grammar: "type 15b / type 7"
%   i_conjugation                stajati — grammar: "i-conjugation"
%   type_15b_type_7_3            kleknuti — grammar: "type 15b / type 7"
%   e_conjugation_group_2a_3     ići — grammar: "e-conjugation (group 2a)"
%   i_conjugation_group_2b       leći — grammar: "i-conjugation (group 2b)"
%   e_conjugation_group_2a_4     odneti — grammar: "e-conjugation (group 2a)"
%   e_conjugation_group_2a_5     oći — grammar: "e-conjugation (group 2a)"
%   i_conjugation_group_2b_2     pomoći — grammar: "i-conjugation (group 2b)"
%   i_conjugation_group_2a       staviti — grammar: "i-conjugation (group 2a)"
%   type_11                      üzeti — grammar: "Type 11"
% Irregular (listed in data/verbs.exceptions.tsv): kéti kleti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
