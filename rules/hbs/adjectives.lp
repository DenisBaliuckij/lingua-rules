% rules/hbs/adjectives.lp
% Serbo-Croatian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23142: Ilirska slovnica (1854), pages 209
%   doc 105570: Grammatica della lingua serbo-croata (illirica) (1867), pages 40, 50, 72, 74, 75, 82, 88, 96, 97, 98, 99, 100, 101, 102, 103, 135
%   doc 389103: Bosnian, Croatian, Serbian, a Grammar: With Sociolinguistic Commentary (2010), pages 111, 132, 154, 156, 157, 160, 163, 168, 310, 317, 318, 319, 320, 321, 322, 323, 324, 325
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   declinazione_determinata_de_temi_zut_e_s žut — grammar: "Declinazione determinata de' temi žut e šuplj"
%   declinazione_determinata_de_temi_zut_e_s_2 šuplj — grammar: "Declinazione determinata de' temi žut e šuplj"
%   neki_type                    neki
%   dobar_type                   dobar
%   l_part                       gledati, videti — grammar: "L-part"
%   los_type                     loš
%   l_part_2                     vidjeti — grammar: "L-part"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
