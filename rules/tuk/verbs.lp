% rules/tuk/verbs.lp
% Turkmen verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70550: Türkmen Türkçesi Grameri (2015), pages 110, 119, 125, 127, 128, 130, 131, 138, 147, 148, 151, 160, 161
%   doc 389586: A Short Descriptive Grammar of the Turkmen Language (1994), pages 8, 9, 10, 12, 13, 15, 16, 17, 18, 19, 20, 21, 24, 28, 29
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   almak_type                   almak
%   genis_zamann_rivayeti_1      dilemek — grammar: "Geniş Zamanın Rivayeti-1"
%   bolmak_type                  bolmak
%   surmek_type                  sürmek
%   bar_type                     bar
%   c1_tip_simdiki_zaman         bilyaa — grammar: "1. Tip Şimdiki Zaman"
%   c2_tip_simdiki_zaman         bilyii — grammar: "2. Tip Şimdiki Zaman"
%   c2_tip_simdiki_zaman_2       duryaa — grammar: "2. Tip Şimdiki Zaman"
%   dusunmek_type                düşünmek
%   etmek_type                   etmek
%   c1_tip_simdiki_zaman_2       garayaa — grammar: "1. Tip Şimdiki Zaman"
%   gaytmak_type                 gaytmak
%   gel_type                     gel
%   gor_type                     gör
%   tip_gecmis_zamann_ogrenilen_gecmis_zaman uçmak — grammar: "Tip Geçmiş Zamanın (Öğrenilen Geçmiş Zaman) Rivayeti-2"
%   tip_gecmis_zamann_bilinen_gecmis_zaman_r yazmak — grammar: "Tip Geçmiş Zamanın (Bilinen Geçmiş Zaman) Rivayeti"
%   genis_zaman                  çap — grammar: "Geniş zaman"
%   c1_tip_simdiki_zaman_3       övrenyaa — grammar: "1. Tip Şimdiki Zaman"
%   gelecek_zaman                al — grammar: "Gelecek zaman"
%   basla_type                   başla
%   boorclu_type                 boorçlu
%   diiri_type                   diiri
%   genis_zaman_2                dile — grammar: "Geniş zaman"
%   c2_tip_simdiki_zaman_3       eşidyii — grammar: "2. Tip Şimdiki Zaman"
%   genis_zaman_3                gara — grammar: "Geniş zaman"
%   garasmak_type                garaşmak
%   gelecek_zaman_2              geç — grammar: "Gelecek zaman"
%   gormek_type                  görmek
%   gelecek_zaman_3              ok — grammar: "Gelecek zaman"
%   soymek_type                  söymek
%   indefinite_future_declension_following_a aýlamak — grammar: "Indefinite future declension following a vowel"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
