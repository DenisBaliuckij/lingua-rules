% rules/aeb/nouns.lp
% Tunisian Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 21366: Tunisian Arabic Basic Course. Volumes 1 and 2. (1970), pages 86, 100, 152, 156, 178, 287, 295
%   doc 21437: Course in Tunisian Arabic (n.d.), pages 39, 95, 357, 378, 379
%   doc 21471: Tunisian Arabic in 30 Lessons: Learn Arabic Just The Way As People Talk ! (2018), pages 24, 46
%   doc 854489: Peace Corps/Tunisia Course in Tunisian Arabic (1979), pages 30, 40, 96, 358, 379, 380
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ba_b_type                    ba:b
%   di_na_r_type                 di:na:r
%   karra_sa_type                karra:sa
%   kt_type                      kt
%   kta_b_type                   kta:b
%   qlam_type                    qlam
%   sti_lu_type                  sti:lu
%   taawla_type                  taawla
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
