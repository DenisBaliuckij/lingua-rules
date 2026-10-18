% rules/sro/verbs.lp
% Sardinian (Campidanese) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388502: Grammatica sardo-campidanese (n.d.), pages 73, 78, 80, 82, 83, 84, 85, 86, 87, 88, 89, 100, 105
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   sottoclasse_in_udi_part_pass_udiu acudi — grammar: "sottoclasse in - UDI (part. pass. - ÙDIU)"
%   sottoclasse_in_isti_part_pass_istiu arresisti — grammar: "sottoclasse in - ISTI (part. pass. - ÌSTIU)"
%   sottoclasse_in_endi_part_pass_endiu bendi — grammar: "sottoclasse in - ENDI (part. pass. - ÈNDIU)"
%   sottoclasse_in_ati_part_pass_atiu cumbati — grammar: "sottoclasse in - ATI (part. pass. - ÀTIU)"
%   sottoclasse_in_tzi_part_pass_tziu setzi — grammar: "sottoclasse in - TZI (part. pass. '- TZIU)"
%   sottoclasse_in_essi_part_pass_essiu sparèssi — grammar: "sottoclasse in - ESSI (part. pass. - ÈSSIU)"
%   sottoclasse_in_usi_part_pass_usiu tradusi — grammar: "sottoclasse in - USI (part. pass. - ÙSIU)"
%   sottoclasse_in_undi_part_pass_undiu tundi — grammar: "sottoclasse in - UNDI (part. pass. - ÙNDIU)"
%   sottoclasse_in_osci_part_pass_oscu arrosci — grammar: "Sottoclasse in - OSCI (part. pass. - OSÇU)"
%   sottoclasse_in_ompi_part_pass_ompiu lompi — grammar: "Sottoclasse in - OMPI (part. pass. - ÒMPIU)"
%   sottoclasse_in_imi_part_pass_imiu oprimi — grammar: "Sottoclasse in - IMI (part. pass. - ÌMIU)"
%   sottoclasse_in_erdi_part_pass_erdiu perdi — grammar: "Sottoclasse in - ERDI (part. pass. - ÈRDIU)"
%   sottoclasse_in_xi_part_pass_xu praxi — grammar: "Sottoclasse in - XI (part. pass. - XU)"
%   sottoclasse_in_iti_part_pass_itiu promiti — grammar: "Sottoclasse in - ITI (part. pass. - ÌTIU)"
%   sottoclasse_in_edi_part_pass_ediu sussedi — grammar: "Sottoclasse in - EDI (part. pass. - ÈDIU)"
%   sottoclasse_in_emi_part_pass_emiu tremi — grammar: "Sottoclasse in - EMI (part. pass. - EMIU)"
%   sottoclasse_in_ivi_part_pass_iviu bivi — grammar: "sottoclasse in - IVI (part. pass. - ÌVIU)"
%   sottoclasse_in_api_part_pass_apiu capi — grammar: "sottoclasse in - API (part. pass. - ÀPIU)"
%   sottoclasse_in_esci_part_pass_escu cresci — grammar: "sottoclasse in - ESCI (part. pass. - ESÇU)"
%   sottoclasse_in_ulli_part_pass_ulliu mulli — grammar: "Sottoclasse in - ULLI (part. pass. - ÙLLIU)"
%   sottoclasse_in_epi_part_pass_epiu depi — grammar: "Sottoclasse in - EPI (part. pass. - ÈPIU)"
%   sottoclasse_in_gi_part_pass_ju ligi — grammar: "Sottoclasse in - GI (part. pass. - JU)"
%   sottoclasse_in_ovi_part_pass_oviu movi — grammar: "Sottoclasse in - OVI (part. pass. - ÒVIU)"
%   sottoclasse_in_asci_part_pass_ascu nasci — grammar: "Sottoclasse in - ASCI (part. pass. - ASÇU)"
%   sottoclasse_in_andi_part_pass_andiu prandi — grammar: "Sottoclasse in - ANDI (part. pass. - ÀNDIU)"
%   prima_coniugazione           cantai — grammar: "prima coniugazione"
%   terza_coniugazione           partiri — grammar: "terza coniugazione"
%   tengu_type                   tengu
%   seconda_coniugazione         timi — grammar: "seconda coniugazione"
% Irregular (listed in data/verbs.exceptions.tsv): andai, donai, lassai, nai, nàrrere
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
