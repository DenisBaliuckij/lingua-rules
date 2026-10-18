% rules/trw/nouns.lp
% Torwali nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389860: An Overview of Linguistic Structures in Torwali, A Language of Northern Pakistan (2001), pages 54, 66, 69, 71, 78, 85, 86, 87, 88, 89
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   chi_type                     CHi
%   dqk_type                     DQk
%   bal_type                     bal
%   ben_type                     ben
%   dan_type                     dan
%   dut_type                     dut
%   jumat_type                   jumat
%   netkhel_type                 netkHel
%   yap_type                     yap
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
