% rules/krc/verbs.lp
% Karachay-Balkar verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15532: Karaçay-Malkar Türkçesi Grameri (2023), pages 186, 187, 189, 190, 191, 192, 193, 194, 199, 200, 201, 204, 205, 206, 207, 208, 209, 212, 213, 214, 215, 216, 217, 218
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   i_tip_simdiki_zaman_kipi     ayt — grammar: "I. tip şimdiki zaman kipi"
%   genis_zaman_kipi             caşa — grammar: "geniş zaman kipi"
%   iii_tip_simdiki_zaman_kipi   et — grammar: "III. tip şimdiki zaman kipi"
%   i_tip_gecmis_zaman_kipi      kör — grammar: "I. tip geçmiş zaman kipi"
%   emir_kipi                    ḳaç — grammar: "emir kipi"
%   bil_type                     bil
%   iii_tip_gecmis_zaman_kipi    kel — grammar: "III. Tip Geçmiş Zaman Kipi"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
