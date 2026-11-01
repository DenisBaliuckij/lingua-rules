% rules/ute/nouns.lp
% Ute nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389537: Ute Reference Grammar (2010), pages 71, 72, 79
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   mama_chi_type                mama-chi
%   naachi_chi_type              naŋachi-chi
%   tawa_chi_type                taŋwa-chi
%   apa_chi_type                 ŋapa-chi
%   kava_type                    kava
%   sari_chi_type                sari-chi
%   sinaa_vi_type                sinaa-vi
%   toghoa_vi_type               toghoa-vi
%   tua_chi_type                 tua-chi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
