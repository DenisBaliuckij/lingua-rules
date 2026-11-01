% rules/vor/verbs.lp
% Bena verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296358: A Reference Grammar of Bena (2011), pages 111, 120, 122, 123, 221, 284, 291, 292, 293, 297, 298, 300, 302, 303, 305, 306, 307, 308, 309, 310, 311, 312
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   gona_type                    gona
%   geenda_type                  geenda
%   hugona_type                  hugona
%   hugeenda_type                hugeenda
%   hudiindula_type              hudiindula
%   hudiinda_type                hudiinda
%   humutova_type                humutova
%   ndigona_type                 ndigona
%   remote_p4_past_habitual      agoniige — grammar: "Remote (P4) past habitual"
%   fwe_type                     fwe
%   fwiidzdga_type               fwiidzdga
%   geenddga_type                geenddga, gondga
%   recent_p3_past_perfective    geendile, gonile, haageendile, haagonile — grammar: "Recent (P3) past perfective"
%   recent_p3_past_progressive   haagendiige, haagoniige — grammar: "Recent (P3) past progressive"
%   today_hodiernal_p2_past_progressive higeenda, higona — grammar: "Today/hodiernal (P2) past progressive"
%   remote_f3_future_perfective_with_vowel_i leeluha, loogopa — grammar: "Remote (F3) future perfective with vowel-initial verb stems"
%   memiidze_type                memiidze
%   mutovile_type                mutovile
%   remote_p4_past_habitual_with_monosyllabi gwii — grammar: "Remote (P4) past habitual with monosyllabic stem"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
