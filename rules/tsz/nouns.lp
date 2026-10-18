% rules/tsz/nouns.lp
% Purépecha nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389662: Curso de Lengua P’urhépecha (Para No Hablantes en P’urhe) (1998), pages 11, 23, 32, 37
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   achat_i_type                 achát-i
%   charhak_u_type               charhák-u
%   jikuats_i_type               jikuáts-ï
%   nan_a_type                   nan-á
%   nanak_a_type                 nanák-a
%   par_e_type                   par-é
%   tokond_type                  tokónd
%   ts_am_e_type                 ts´am-é
%   tanik_ua_type                tánik-ua
%   uarhit_i_type                uarhít-i
%   uich_u_type                  uích-u
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
