% rules/ttt/nouns.lp
% Tat (North Azerbaijani) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78625: Язык североазербайджанских татов (1963), pages 21, 58, 59, 61
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   birar_type                   birär
%   dar_type                     dar
%   di_type                      di
%   duxtxr_type                  duxtxr
%   gaedx_type                   gaedx
%   kaerg_type                   kaerg
%   mxrd_type                    mxrd
%   qusband_type                 qusband
%   sanq_type                    sanq
%   seg_type                     səeg
%   tirax_type                   tirax
%   xuvar_type                   xuvär
%   zaen_type                    zaen
%   edemi_type                   əedəemi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
