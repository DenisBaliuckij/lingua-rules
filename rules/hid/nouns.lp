% rules/hid/nouns.lp
% Hidatsa nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389456: Hidatsa Morpho-Syntax and Clause Structure (2007), pages 96, 97, 98, 99, 100, 101, 102, 156, 165, 166, 167, 177, 180, 272
%   doc 389458: A Grammar of Hidatsa (2012), pages 99, 103, 135, 136, 137, 141, 144, 190, 197, 236, 268, 269, 270, 271, 304, 367, 368, 377, 381, 565
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   inalienably_possessed_nouns_with_initial idaaghá — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_2 idáá — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_idaa_ma héèrabi — grammar: "inalienably possessed nouns with idaa-/madaa-/nídaa"
%   inalienably_possessed_nouns_with_idaa_ma_2 idaahcú — grammar: "inalienably possessed nouns with idaa-/madaa-/nídaa"
%   inalienably_possessed_nouns_with_initial_3 aahdú — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienable_possessed_pronouns_and_vowel aba, e?e, iguudi, uaga — grammar: "Inalienable Possessed Pronouns and Vowel Initial Stems"
%   inalienably_possessed_nouns_with_initial_4 abhúhga — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_5 abá — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_6 ahbá — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_7 ahbóògsa — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_8 ará — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienable_possessed_pronouns_and_conso ci, guu — grammar: "Inalienable Possessed Pronouns and Consonant Initial Stems"
%   cilda_type                   cilda
%   cuada_type                   cuada, shiiba
%   inalienable_possessed_pronouns_and_conso_2 duush, shida — grammar: "Inalienable Possessed Pronouns and Consonant Initial Stems"
%   inalienable_possessed_pronouns_and_vowel_2 h — grammar: "Inalienable Possessed Pronouns and Vowel Initial Stems"
%   inalienably_possessed_nouns_with_initial_9 icidí, idagí, idhaací, irigí — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_10 icí — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_11 iicagí, iihxí — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_12 iihsá — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_13 irásba — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_14 iráàxixi — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_15 irí — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_16 isdáhge — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_17 isída — grammar: "inalienably possessed nouns with initial iC"
%   r_initial_stems_with_third_person_pronou naaca — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_2 naada — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_no_loss naaga — grammar: "/r-/ Initial Stems with no loss"
%   r_initial_stems_with_third_person_pronou_3 naashi — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_4 naathiru — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_5 naaxu — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_6 nacgohba — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_7 nahshi — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_8 naxbi — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_9 neeshi — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   ngi_type                     ngi
%   r_initial_stems_with_third_person_pronou_10 nohci — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_11 nohshi — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_12 noodishga — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   r_initial_stems_with_third_person_pronou_13 noorooba — grammar: "/r-/ Initial Stems with Third Person Pronoun loss"
%   nuuda_type                   nuuda
%   r_initial_stems_with_no_loss_2 raadi — grammar: "/r-/ Initial Stems with no loss"
%   raaga_type                   raaga
%   r_initial_stems_with_no_loss_3 raaxi — grammar: "/r-/ Initial Stems with no loss"
%   raaxixi_type                 raaxixi
%   ragua_type                   ragua
%   risha_type                   risha
%   inalienable_possessed_pronouns_and_conso_3 xua — grammar: "Inalienable Possessed Pronouns and Consonant Initial Stems"
%   inalienably_possessed_nouns_with_initial_18 áàba, áàbeˀ, áàci, áàra ... — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_19 aasí — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_20 ahgúxi — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_21 ibíìdi — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_22 idúùxi — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_23 idúú — grammar: "inalienably possessed nouns with initial iC"
%   inalienably_possessed_nouns_with_initial_24 iidá — grammar: "inalienably possessed nouns with initial VV or aC"
%   inalienably_possessed_nouns_with_initial_25 iráàxi — grammar: "inalienably possessed nouns with initial iC"
%   ishda_type                   ishda
%   inalienably_possessed_nouns_with_initial_26 ixúá — grammar: "inalienably possessed nouns with initial iC"
% Irregular (listed in data/nouns.exceptions.tsv): eerí, eexí, isdá, ixbá, maabísa, náxohga, íìri
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
