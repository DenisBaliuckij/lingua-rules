% rules/dny/nouns.lp
% Deni nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25190: The Neo-Aramaic Dialect of the Jews of Dohok: A Comparative-Typological Grammar (2018), pages 38, 97, 98
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   zamar_a_type                 zamar-a
%   bab_a_type                   bab-a
%   karm_a_type                  karm-a
%   malk_a_type                  malk-a
%   nun_ia_type                  nun-iθa
%   sawoy_a_type                 sawoy-a
%   xa_a_type                    xa-θa
%   xur_a_type                   xur-a
%   ymm_a_type                   yəmm-a
%   axon_a_type                  ʾaxon-a
%   e_a_type                     ʾeð-a
% Irregular (listed in data/nouns.exceptions.tsv): beθa, brona, gora, kalba, məndi, šata
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
