% rules/duj/nouns.lp
% Dhuwal nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 793556: Dhuwal (Arnhem Land) Texts on Kinship and Other Subjects with Grammatical Sketch and Dicti (1984), pages 16, 33, 45, 46
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ba_pa_type                   ba:pa
%   bulan_type                   bulan^
%   dakul_type                   dakul?, mumalkur
%   jaykuns_type                 jaykunS?
%   n_ama_type                   n^ama?
%   n_aric_type                  n^aric
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
