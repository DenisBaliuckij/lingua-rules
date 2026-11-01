% rules/scp/nouns.lp
% Sherpa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289536: A sketch grammar of Lamjung Yolmo (2016), pages 68, 96, 111, 130
%   doc 388323: A Grammar of Hile Sherpa (2007), pages 62, 63, 157, 158, 159, 160, 163, 192
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   stems_ending_in_a            CArwa — grammar: "stems ending in /a/"
%   stems_ending_in_a_2          CuHNma — grammar: "stems ending in /a/"
%   monosyllabic_stems_ending_in_u Cux — grammar: "monosyllabic stems ending in /u/"
%   genitive_forms_end_in_ai_or_ai FAu — grammar: "Genitive forms end in /Ai/ or /ai/"
%   stems_ending_in_a_3          KANba — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives KAx — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   proper_names_genitives_with_i LAma — grammar: "Proper names genitives with -i"
%   stems_ending_in_a_4          Mima — grammar: "stems ending in /a/"
%   stems_ending_in_a_5          PAkpa — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives_2 SAx — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_a_6          SeJrwa — grammar: "stems ending in /a/"
%   stems_ending_in_a_7          ToNba — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives_3 VaJ — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   monosyllabic_stems_ending_in_u_2 bu — grammar: "monosyllabic stems ending in /u/"
%   type_7_monosyllabic_stems_with_genitives_4 cAH — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_i            cEJni — grammar: "stems ending in /i/"
%   stems_ending_in_i_2          cOkfi — grammar: "stems ending in /i/"
%   type_7_monosyllabic_stems_with_genitives_5 ca — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_a_8          dAHlza — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives_6 do — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   type_7_monosyllabic_stems_with_genitives_7 fAx — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   type_7_monosyllabic_stems_with_genitives_8 fa — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   type_7_monosyllabic_stems_with_genitives_9 foJ — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_a_9          gOkpa — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives_10 goH — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   proper_names_genitives_with_i_2 gomA — grammar: "Proper names genitives with -i"
%   stems_ending_in_a_10         haNa — grammar: "stems ending in /a/"
%   stems_ending_in_a_11         hoJma — grammar: "stems ending in /a/"
%   monosyllabic_stems_ending_in_a_front_vow je — grammar: "monosyllabic stems ending in a front vowel"
%   stems_ending_in_a_12         kAJNba — grammar: "stems ending in /a/"
%   stems_ending_in_a_13         kOsa — grammar: "stems ending in /a/"
%   stems_ending_in_a_14         kafa — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives_11 lAH — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   type_7_monosyllabic_stems_with_genitives_12 lo — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_a_15         mAHkpa — grammar: "stems ending in /a/"
%   stems_ending_in_a_16         mAja — grammar: "stems ending in /a/"
%   genitive_forms_end_in_ai_or_ai_2 mau — grammar: "Genitive forms end in /Ai/ or /ai/"
%   monosyllabic_stems_ending_in_a_front_vow_2 meH — grammar: "monosyllabic stems ending in a front vowel"
%   stems_ending_in_i_3          meHSi — grammar: "stems ending in /i/"
%   stems_ending_in_a_17         muJkpa — grammar: "stems ending in /a/"
%   stems_ending_in_a_18         nAJma — grammar: "stems ending in /a/"
%   monosyllabic_stems_ending_in_a_front_vow_3 qix — grammar: "monosyllabic stems ending in a front vowel"
%   stems_ending_in_a_19         qurFa — grammar: "stems ending in /a/"
%   type_7_monosyllabic_stems_with_genitives_13 sAJ — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_a_20         sAmba — grammar: "stems ending in /a/"
%   stems_ending_in_a_21         saHmba — grammar: "stems ending in /a/"
%   monosyllabic_stems_ending_in_u_3 sux — grammar: "monosyllabic stems ending in /u/"
%   type_7_monosyllabic_stems_with_genitives_14 tAJ — grammar: "Type 7: Monosyllabic stems with genitives in /e/"
%   stems_ending_in_a_22         tiH-wa — grammar: "stems ending in /a/"
%   stems_ending_in_e            viHkpe — grammar: "stems ending in /e/"
% Irregular (listed in data/nouns.exceptions.tsv): KoJva, PoJ, goHVe, kah, lO, ma, nAH, tiH, zu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
