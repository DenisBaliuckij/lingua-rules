% rules/ood/verbs.lp
% Névome verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 91112: Grammatical Sketch of the Tohono O'odham Language (2020), pages 29
%   doc 388340: A Grammar of Nevome (1982), pages 43, 79
%   doc 389034: A Papago Grammar (1983), pages 49, 63, 73, 74, 75, 76, 173, 174
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ant_type                     ant
%   an_type                      an
%   med_type                     med
%   ce_ewid_type                 ce'ewid
%   cicwi_type                   cicwi
%   gagswua_type                 gagswua
%   golon_type                   golon
%   he_lwuin_type                he:lwuin
%   hi_nk_type                   hi:nk
%   him_type                     him
%   huhu_id_type                 huhu'id
%   ka_type                      ka
%   neid_type                    neid
%   neok_type                    neok
%   si_sp_type                   si:sp
%   sonwuin_type                 sonwuin
%   woson_type                   woson
% Irregular (listed in data/verbs.exceptions.tsv): ju:k, ko'a, ko:s, na:d, si'i, wo, wupda
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
