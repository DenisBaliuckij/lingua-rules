% rules/tsg/verbs.lp
% Tausug verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 636804: Intensive Tausug: A Pedagogical Grammar of the Language of Jolo, Philippines (n.d.), pages 18, 33, 48, 70, 74, 100, 121, 171, 201
%   doc 855238: Tausug-English Dictionary: Kabtangan Iban Maana (Grammar Notes Section) (n.d.), pages 4
%   doc 855240: Tausug-English Dictionary: Kabtangan Iban Maana (Excerpt: Grammar Notes) (n.d.), pages 4
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   hi_verbs                     hihi — grammar: "hi- verbs"
%   hi_verbs_2                   hikadtu — grammar: "hi- verbs"
%   man_verbs                    abu — grammar: "MaN- verbs"
%   man_verbs_2                  againuo — grammar: "MaN- verbs"
%   hi_verbs_3                   hibutan.e — grammar: "hi- verbs"
%   hi_verbs_4                   hihatud — grammar: "hi- verbs"
%   hi_verbs_5                   hikawn — grammar: "hi- verbs"
%   hi_verbs_6                   hisamf)ay — grammar: "hi- verbs"
%   hi_verbs_7                   hitanum — grammar: "hi- verbs"
%   man_verbs_3                  hukum — grammar: "MaN- verbs"
%   madtu_type                   madtu
%   mag_antiira_type             mag'antiira, mag'asubu
%   mag_ukab_type                mag'ukab
%   mag_ulan_type                mag'ulan
%   magkiilu_type                magkiilu
%   magsilawak_type              magsilawak, magsinilas
%   magtagna_type                magtagna, magtangis
%   maun_type                    maun
%   man_verbs_4                  mayta — grammar: "MaN- verbs"
%   man_verbs_5                  ura — grammar: "MaN- verbs"
%   hipag_hipan_verbs            anak — grammar: "hipag-/hipaN- verbs"
%   hipag_hipan_verbs_2          baggut — grammar: "hipag-/hipaN- verbs"
%   hipag_hipan_verbs_3          dihil — grammar: "hipag-/hipaN- verbs"
%   hi_verbs_8                   hibuf!it — grammar: "hi- verbs"
%   hipag_hipan_verbs_4          huya — grammar: "hipag-/hipaN- verbs"
%   hipag_hipan_verbs_5          katul — grammar: "hipag-/hipaN- verbs"
%   mar_i_type                   mar"i
%   motion_verbs                 mari — grammar: "Motion Verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
