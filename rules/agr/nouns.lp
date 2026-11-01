% rules/agr/nouns.lp
% Aguaruna nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 77480: A Grammar of Aguaruna (Iiniá Chicham) (2017), pages 42, 144, 179, 191, 206, 263, 264, 265, 372, 374, 377, 378
%   doc 77483: A Grammar of Aguaruna (2007), pages 241, 248, 252, 297, 299, 362, 364, 365, 367, 368, 421
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   timpui_type                  tʃimpúi
%   atash_type                   atásh
%   vowel_changing_nouns_ending_in_u baku — grammar: "vowel-changing nouns ending in /u/"
%   inta_type                    intáʃ
%   nouns_ending_in_hv           kaŋkaha — grammar: "nouns ending in /hV/"
%   nouns_ending_in_hv_2         numpiha, uwi̵ha — grammar: "nouns ending in /hV/"
%   natsatsam_type               nátsatsam
%   nouns_ending_in_hv_3         uhahi — grammar: "nouns ending in /hV/"
%   wawik_type                   wawík
%   vowel_changing_nouns_ending_in_u_2 wi̵nu — grammar: "vowel-changing nouns ending in /u/"
%   washi_type                   wáshi
%   vowel_changing_nouns_ending_in_u_3 yatsu — grammar: "vowel-changing nouns ending in /u/"
%   duku_type                    duku
%   diit_type                    díitʃ
%   dis_type                     dɔ́ɾis
%   pablo_type                   pablo
%   tihikas_type                 tihiŋkás
%   yatsu_type                   yátsu
% Irregular (listed in data/nouns.exceptions.tsv): hínta, namák, náin, núŋka, ãɰa, íkam
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
