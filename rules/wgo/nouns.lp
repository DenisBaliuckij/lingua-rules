% rules/wgo/nouns.lp
% Ambel nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 901631: A Grammar of Ambel: An Austronesian language of Raja Ampat, west New Guinea (2018), pages 262, 336, 337, 338, 339, 348, 351, 352
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   direct_i                     yói — grammar: "Direct I"
%   direct_i_2                   kabóm — grammar: "Direct I"
%   direct_i_paradigm            sú — grammar: "Direct I paradigm"
%   direct_i_paradigm_2          tají — grammar: "Direct I paradigm"
%   direct_iii_paradigm          kóya — grammar: "Direct III paradigm"
%   direct_iii_paradigm_2        lú — grammar: "Direct III paradigm"
%   direct_ii_paradigm_for_non_sonorant_init kamú — grammar: "Direct II paradigm for non-sonorant-initial nouns"
%   direct_ii_paradigm           má — grammar: "Direct II paradigm"
%   direct_ii_paradigm_2         nyá — grammar: "Direct II paradigm"
%   kai_type                     kái
%   direct_ia                    talatú — grammar: "Direct Ia"
% Irregular (listed in data/nouns.exceptions.tsv): nyái
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
