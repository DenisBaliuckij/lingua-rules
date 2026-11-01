% rules/kxv/nouns.lp
% Kuvi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296059: A Grammar of the Kuvi Language, with Copious Examples (1911), pages 16, 18, 46, 47, 48, 71, 72, 76, 105, 113, 114, 115, 116, 117, 118, 122, 125, 127, 128, 129, 130, 136, 137, 138, 141, 142, 167, 174
%   doc 897607: Kuvi Grammar (n.d.), pages 73, 74, 75, 76, 80, 81, 82, 91, 92, 93
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   kepa_type                    kepa
%   kepinai_type                 kepinai
%   kepuwu_type                  kepuwU
%   first_declension             kokasi — grammar: "first declension"
%   first_declension_2           mriesi — grammar: "first declension"
%   second_declension            neroini — grammar: "second declension"
%   nomeri_type                  nomeri
%   first_declension_3           tonesi — grammar: "first declension"
%   feminine_nouns               ayya — grammar: "feminine nouns"
%   masculine_nouns_with_stem_alternants bakte — grammar: "masculine nouns with stem alternants"
%   ho_ru_type                   ho:ru
%   illt_type                    illt
%   ka_t_li_type                 ka:t:li
%   ka_yu_type                   ka:yu
%   keyyu_type                   keyyu
%   kommu_type                   kommu
%   koyyu_type                   koyyu
%   masculine_nouns_with_stem_alternants_2 kumbre — grammar: "masculine nouns with stem alternants"
%   kundu_type                   kundu
%   lo_ru_type                   lo:ru
%   masculine_nouns_ending_in_si_derived_fro na:yutita — grammar: "masculine nouns ending in -si derived from compound verbs or adjectival bases"
%   pallu_type                   pallu
%   pu_yu_type                   pu:yu
%   ra_ccu_type                  ra:ccu
%   masculine_nouns_with_stem_alternants_3 rohle — grammar: "masculine nouns with stem alternants"
%   feminine_nouns_2             tangi — grammar: "feminine nouns"
%   to_lu_type                   to:lu
%   totli_type                   totli
%   u_yu_type                    u:yu
%   valli_type                   valli
%   vanju_type                   vanju
%   masculine_nouns_ending_in_esi_derived_fr vi:s — grammar: "masculine nouns ending in -?esi derived from simple verbal bases"
% Irregular (listed in data/nouns.exceptions.tsv): burhi, ma:Jiga, po:da, rpir
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
