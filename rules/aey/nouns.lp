% rules/aey/nouns.lp
% Amele nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 651530: Amele RRG Grammatical Sketch (2016), pages 79, 84, 157, 158, 159, 161, 214, 215, 217, 218, 223, 231, 412
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   inalienably_possessed_noun   ateg — grammar: "Inalienably Possessed Noun"
%   inalienably_possessed_noun_2 cotig — grammar: "Inalienably Possessed Noun"
%   inalienably_possessed_nouns  tana+li, jajani — grammar: "Inalienably Possessed Nouns"
%   inalienably_possessed_nouns_2 Ɂot+i, osomi, coti, dodi ... — grammar: "Inalienably Possessed Nouns"
%   bini_type                    bini
%   deweg_type                   deweg
%   au_type                      au
%   c1                           dewe, aide, amuli, ate ... — grammar: "C1"
%   deweni_type                  deweni
%   hulini_type                  hulini
%   majani_type                  majani
%   memetiel_type                memetiel
%   aidin_type                   aidin
%   aten_type                    aten
%   cafan_type                   cafan
%   gemun_type                   gemun
%   hulin_type                   hulin
%   magen_type                   magen, walin
%   momon_type                   momon, osom
%   c37                          abiel — grammar: "C37"
%   c36                          am — grammar: "C36"
%   c35                          as, aw, min — grammar: "C35"
%   asi_type                     asi, awi
%   c30                          bega — grammar: "C30"
%   c33                          bin, cot, dod, huh ... — grammar: "C33"
%   c1_2                         hije — grammar: "C1"
%   c31                          jaja — grammar: "C31"
%   maja_type                    maja
%   c36_2                        me — grammar: "C36"
%   mei_type                     mei
%   c37_2                        sihuniel — grammar: "C37"
%   c32                          tana — grammar: "C32"
%   c34                          wal — grammar: "C34"
%   wali_type                    wali
%   c33_2                        waw — grammar: "C33"
%   abieli_type                  abieli
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
