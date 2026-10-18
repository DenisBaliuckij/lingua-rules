% rules/lug/verbs.lp
% Luganda verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 816391: A Luganda Grammar (2015), pages 6, 7, 10, 11, 12, 51, 52, 53, 54, 56
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   regular_verbs                okukola — grammar: "Regular verbs"
%   okuba_type                   okuba
%   reflexive_verbs              okutaaga — grammar: "reflexive verbs"
%   okusamba_type                okusamba
%   okwagala_type                okwagala
%   okwambala_type               okwambala
%   okwera_type                  okwera
%   okwetaaga_type               okwetaaga
%   okwongera_type               okwongera
%   okwoza_type                  okwoza
%   okwogera_type                okwogera
%   genda_type                   genda
%   gula_type                    gula
%   jja_type                     jja
% Irregular (listed in data/verbs.exceptions.tsv): bala, bba, beera, buuza, dda, ddamu, ddayo, dduka, gaana, gezaako, ggalawo, jjukira ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
