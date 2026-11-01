% rules/aii/nouns.lp
% Assyrian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388144: Exposé des éléments de la grammaire assyrienne (1868), pages 64, 71, 72, 73, 83, 121, 122, 125, 127, 128, 162, 163, 173, 178, 188, 199, 204, 213, 218
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   a_u_da_at_type               a-U-da-at
%   a_bu_type                    a-bu
%   ba_bu_type                   ba-bu
%   ba_tu_lat_type               ba-tu-lat
%   bi_u_il_type                 bi-U-il
%   din_nu_type                  din-nu
%   na_ki_ru_type                na-ki-ru
%   sar_ru_type                  sar-ru
%   zi_ik_ru_type                zi-ik-ru
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
