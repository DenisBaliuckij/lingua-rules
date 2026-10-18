% rules/dak/verbs.lp
% Dakota verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78136: Dakota Grammar, Texts, and Ethnography (1893), pages 62, 75, 76, 78, 79, 80, 81, 85
%   doc 388429: Dakota; Oie Wooŋspe Kaġapi (n.d.), pages 29
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   conjugation_iii_first_variety_pronouns_p ta — grammar: "Conjugation III, First Variety, Pronouns Prefixed"
%   conjugation_iii_first_variety_pronouns_i asni — grammar: "Conjugation III, First Variety, Pronouns Inserted"
%   kaska_type                   kaska
%   conjugation_iii_first_variety_pronouns_p_2 waste — grammar: "Conjugation III, First Variety, Pronouns Prefixed"
%   root_ksa                     boksaksa — grammar: "Root KSA"
%   ecol_type                    ecol)
%   il_type                      il)
%   iwal_ga_type                 iwal)ga
%   titoi_wal_dialect            iyul)ga — grammar: "TitoI)Wal) dialect"
%   root_ksa_2                   kaksaksa — grammar: "Root KSA"
%   root_ksa_3                   naksaksa — grammar: "Root KSA"
%   root_ksa_4                   paksaksa — grammar: "Root KSA"
%   verbs_in_ya                  yaksa — grammar: "VERBS IN 'YA'"
%   root_ksa_5                   yaksuksa — grammar: "Root KSA"
%   root_ksa_6                   yuksaksa — grammar: "Root KSA"
%   c3rd_class                   econ — grammar: "3rd class"
%   hiyotal_ka_type              hiyotal)ka
%   c2nd_class                   yawa — grammar: "2nd class"
%   owil_za_type                 owil)za
%   verbs_in_yo                  iyotaŋka — grammar: "VERBS IN 'YO'"
% Irregular (listed in data/verbs.exceptions.tsv): UlJ, hiyu, yakoŋ, yalJka, yukaŋ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
