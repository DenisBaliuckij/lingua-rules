% rules/hit/nouns.lp
% Hittite nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8741: A Comparative Grammar of the Hittite Language, Volume I (1951), pages 73, 112, 138, 153, 169, 182
%   doc 389902: A Grammar of the Hittite Language: Part 1: Reference Grammar (2008), pages 103, 106, 110, 111, 114, 117, 118, 125, 131, 139, 144, 145, 147, 149, 212, 219, 225, 229, 233, 238, 241, 242, 244, 245, 247, 250, 253, 254
%   doc 389903: Hittite Grammar (2008), pages 26, 27, 30, 33, 35, 50, 51, 52, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 70, 71, 72, 74, 76, 77, 78
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   assus_type                   assus
%   idalus_type                  idālus
%   neuter_n_stems               šaḫḫan — grammar: "neuter n-stems"
%   parkus_type                  parkus
%   halkis_type                  ḫalkiš
%   arahzenas_type               arahzenas
%   r_stem_nouns                 lālaš, ḫupparaz — grammar: "r-stem nouns"
%   neuter_n_stems_2             šaramannaš — grammar: "neuter n-stems"
%   arunas_type                  arunaš, kunnas
%   r_stem_nouns_2               kurur — grammar: "r-stem nouns"
%   a_stem_nouns                 kuzza — grammar: "a-stem nouns"
%   neuter_n_stems_3             laman, ḫuitar — grammar: "neuter n-stems"
%   blend_of_n_stems_and_vocalic_stems memiya — grammar: "Blend of n-stems and vocalic stems"
%   r_n_stems                    pahhuar — grammar: "r/n-stems"
%   pris_type                    priš
%   tuzzis_type                  tuzziš
%   suhhas_type                  šuḫḫaš
%   a_stems                      an-na-as — grammar: "-a-stems"
%   aulis_type                   auliš
%   r_n_stems_2                  eshar — grammar: "r/n-stems"
%   i_stems                      halki — grammar: "i-stems"
%   ai_stem_nouns                lingaiš — grammar: "ai-Stem Nouns"
%   a_stem_nouns_2               naḫšaraz — grammar: "a-stem nouns"
%   ai_stem_nouns_2              ḫurtāiš, zaḫḫaiš — grammar: "ai-Stem Nouns"
%   i_stems_2                    DUGispantuzzi — grammar: "i-stems"
%   auris_type                   auriš
%   istaminas_type               ištaminaš
%   lammar_type                  lammar
%   r_n_stems_3                  mehur — grammar: "r/n-stems"
%   i_stems_3                    tuzzi — grammar: "i-stems"
%   i_stems_4                    ĜIŠhulukanni — grammar: "i-stems"
%   neuter_n_stems_4             šagan — grammar: "neuter n-stems"
%   sullatar_type                šullātar
%   huiswatar_type               ḫuišwatar, laḫḫiyatar
%   a_stems_2                    a-ru-na-aS — grammar: "-a-stems"
%   aldannis_type                aldanniš
%   a_stems_3                    at-ta-an — grammar: "-a-stems"
%   i_stems_5                    halhaltumari — grammar: "i-stems"
%   nt_stem_nouns_and_adjectives išpanza — grammar: "nt-Stem Nouns and Adjectives"
%   neuter_n_stems_5             kuššan — grammar: "neuter n-stems"
%   miyatar_type                 miyatar
%   s_stem                       nepis — grammar: "s-stem"
%   purapsis_type                purapšiš
%   ai_stems                     zahhai, zashai — grammar: "ai-stems"
%   zakkis_type                  zakkiš
%   tt_t_stems                   aniyatt — grammar: "tt (t)-stems"
%   blend_of_n_stems_and_vocalic_stems_2 arkamma — grammar: "Blend of n-stems and vocalic stems"
%   a_stems_4                    dan-na-at-ta-an — grammar: "-a-stems"
%   blend_of_n_stems_and_vocalic_stems_3 hara — grammar: "Blend of n-stems and vocalic stems"
%   karpis_type                  karpiš
%   tt_t_stems_2                 kast — grammar: "tt (t)-stems"
%   kutru_type                   kutru
%   blend_of_n_stems_and_vocalic_stems_4 muri — grammar: "Blend of n-stems and vocalic stems"
%   ptilis_type                  ptiliš
%   uddanaz_type                 uddanaz
%   zankilatar_type              zankilatar
%   neuter_n_stems_6             ḫinkan — grammar: "neuter n-stems"
%   blend_of_n_stems_and_vocalic_stems_5 alkista — grammar: "Blend of n-stems and vocalic stems"
%   i_stems_6                    da-an-ku-i-iS — grammar: "-i-stems"
%   dannattan_type               dannattan
%   a_stem_nouns_3               dušgaraz — grammar: "a-stem nouns"
%   guttural_stem                isgaruh — grammar: "guttural-stem"
%   ishuzis_type                 išḫuziš
%   karsatar_type                karšatar
%   kuttar_type                  kuttar
%   ai_stems_2                   lengai — grammar: "ai-stems"
%   pankur_type                  pankur
%   i_stems_7                    za-ah-ha-is — grammar: "-i-stems"
%   apis_type                    āpiš
%   r_stem_nouns_3               šittaraz — grammar: "r-stem nouns"
%   ai_stem_nouns_3              ḫalluwāiš — grammar: "ai-Stem Nouns"
%   i_stems_8                    ha-an-te-iz-zi-is — grammar: "-i-stems"
%   a_stems_5                    iS-t) — grammar: "-a-stems"
%   a_stem_nouns_4               karaiz — grammar: "a-stem nouns"
%   tt_t_stems_3                 karitt — grammar: "tt (t)-stems"
%   tt_t_stems_4                 kartimmiyatt — grammar: "tt (t)-stems"
%   mehurri_type                 meḫurri
%   i_stems_9                    na-ak-ki-i§ — grammar: "-i-stems"
%   pahhunaz_type                paḫḫunaz
%   i_stems_10                   su-up-pl-is — grammar: "-i-stems"
%   i_stems_11                   tu-uz-zi-is — grammar: "-i-stems"
%   neuter_t_stems               šeppitt — grammar: "Neuter t-stems"
%   sehur_type                   šēḫur
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
