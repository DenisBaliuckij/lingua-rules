% rules/auj/nouns.lp
% Awjila Berber nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296241: A Grammar of Awjila Berber (Libya): Based on Umberto Paradisi’s Material (2013), pages 71, 72, 75, 76, 78, 79, 80, 81, 82, 83, 84, 88, 89, 101, 105, 106, 107, 108, 114, 115, 119, 122, 134
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine_sg_a               awìl — grammar: "Masculine sg. a-"
%   masculine_sg                 gzìn — grammar: "Masculine sg. ø-"
%   masculine_sg_2               màgi — grammar: "Masculine sg. ø-"
%   tabazart_type                tabazàrt
%   takllimt_type                takəllìmt
%   takmmust_type                takəmmùšt
%   taqttist_type                taqəṭṭìšt
%   tazart_type                  tazàrt
%   tuwgilt_type                 tuwəgìlt
%   feminine_plural_in           təfəlùšt — grammar: "Feminine plural -in"
%   feminine_plural_tin_itin     təqəṭṭùšt — grammar: "Feminine plural -tin, -itin"
%   masculine_sg_3               zzày — grammar: "Masculine sg. ø-"
%   masculine_sg_4               ẓùy — grammar: "Masculine sg. ø-"
%   masculine_sg_a_2             adbìr — grammar: "Masculine sg. a-"
%   masculine_sg_a_3             addìd — grammar: "Masculine sg. a-"
%   masculine_sg_a_4             agmàr — grammar: "Masculine sg. a-"
%   masculine_sg_a_5             agìdəv — grammar: "Masculine sg. a-"
%   masculine_sg_a_6             agəllìd — grammar: "Masculine sg. a-"
%   masculine_sg_a_7             ammùd — grammar: "Masculine sg. a-"
%   masculine_plural_awn         asìrf — grammar: "Masculine plural -awən"
%   masculine_plural_n           awìš — grammar: "Masculine plural -ən"
%   masculine_sg_a_8             ayùr — grammar: "Masculine sg. a-"
%   masculine_plural_awn_2       aɣùf — grammar: "Masculine plural -awən"
%   masculine_sg_5               glìm — grammar: "Masculine sg. ø-"
%   masculine_sg_6               gnìš — grammar: "Masculine sg. ø-"
%   masculine_sg_7               grùṭ — grammar: "Masculine sg. ø-"
%   masculine_plural_iwn         išf — grammar: "Masculine plural -iwən"
%   masculine_sg_i               išk — grammar: "Masculine sg. i-"
%   masculine_sg_8               qərzàṭ — grammar: "Masculine sg. ø-"
%   feminine_plural_tin_itin_2   tagmàrt — grammar: "Feminine plural -tin, -itin"
%   takukt_type                  takùkt
%   tamirt_type                  tamìrt
%   taqzzalt_type                taqəẓẓàlt
%   tarzalt_type                 taržàlt
%   tasift_type                  tasìft
%   feminine_plural_tin_itin_3   tawìlt — grammar: "Feminine plural -tin, -itin"
%   tasumt_type                  tašùmt
%   tamay_type                   taɣmày
%   tammirt_type                 taɣəmmirt
%   taholit_type                 taḥolìt
%   long_vowel_removal_plural    tbəssìkt — grammar: "Long vowel removal plural"
%   feminine_plural_tin_itin_4   tfunàst — grammar: "Feminine plural -tin, -itin"
%   feminine_plural_win          tgìli — grammar: "Feminine plural -win"
%   feminine_plural_in_2         tirìwt — grammar: "Feminine plural -in"
%   tisi_type                    tisí
%   tit_type                     tit
%   i_infix_plural               tkənzìrt — grammar: "i-infix plural"
%   i_infix_plural_2             tkərrìšt — grammar: "i-infix plural"
%   long_vowel_removal_plural_2  tkəttìft — grammar: "Long vowel removal plural"
%   feminine_plural_tin_itin_5   tsígit — grammar: "Feminine plural -tin, -itin"
%   tuwnit_type                  tuwənìt
%   long_vowel_removal_plural_3  twəllìkt — grammar: "Long vowel removal plural"
%   long_vowel_removal_plural_4  twəlìst — grammar: "Long vowel removal plural"
%   tixsi_type                   tìxsi
%   long_vowel_removal_plural_5  tšərìmt — grammar: "Long vowel removal plural"
%   tzirat_type                  tžíraṭ
%   feminine_plural_tin_itin_6   təgzìnt — grammar: "Feminine plural -tin, -itin"
%   feminine_plural_tin_itin_7   təkažìt — grammar: "Feminine plural -tin, -itin"
%   feminine_plural_in_3         təkábərt — grammar: "Feminine plural -in"
%   long_vowel_removal_plural_6  təkədìrt — grammar: "Long vowel removal plural"
%   feminine_plural_tin_itin_8   təmasùt — grammar: "Feminine plural -tin, -itin"
%   a_infix_plural               təmiṭàst — grammar: "a-infix plural"
%   i_infix_plural_3             təmuzìst — grammar: "i-infix plural"
%   feminine_plural_win_2        təmìdi — grammar: "Feminine plural -win"
%   feminine_plural_win_3        təmìgni — grammar: "Feminine plural -win"
%   i_infix_plural_4             təqənvìlt — grammar: "i-infix plural"
%   feminine_plural_tin_itin_9   təringìt — grammar: "Feminine plural -tin, -itin"
%   feminine_plural_in_4         tɣardìmt — grammar: "Feminine plural -in"
%   ic_n_plurals                 tɣəṭ — grammar: "-ic̄-ən plurals"
%   feminine_plural_tin_itin_10  tḥalkút — grammar: "Feminine plural -tin, -itin"
%   masculine_plural_awn_3       ul — grammar: "Masculine plural -awən"
%   masculine_sg_a_9             àmẓa — grammar: "Masculine sg. a-"
%   masculine_sg_i_2             ìsəm — grammar: "Masculine sg. i-"
%   masculine_sg_9               ənfùs — grammar: "Masculine sg. ø-"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
