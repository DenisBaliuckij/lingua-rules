% rules/kaz/verbs.lp
% Kazakh verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41283: Kazakşa Til Aşar: Kazakistan Türkçesi Öğrenme ve Konuşma Klavuzu (1992), pages 94, 95, 96
%   doc 388790: Kazakh Grammar with Affix List (1994), pages 13, 14
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   belirsiz_gelecek_zaman_bolcamd_keler_sak al — grammar: "Belirsiz gelecek zaman (Bolcamdı keler şak)"
%   degismeli_gelecek_zaman      baramın — grammar: "Değişmeli gelecek zaman"
%   ogrenilen_gecmis_zaman       körippin — grammar: "Öğrenilen geçmiş zaman"
%   bilinen_gecmis_zaman         oyladım — grammar: "Bilinen geçmiş zaman"
%   bilinen_gecmis_zaman_2       oylağanmın — grammar: "Bilinen geçmiş zaman"
%   degismeli_simdiki_zaman      alamın — grammar: "Değişmeli şimdiki zaman"
% Irregular (listed in data/verbs.exceptions.tsv): jazyp otırmın
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
