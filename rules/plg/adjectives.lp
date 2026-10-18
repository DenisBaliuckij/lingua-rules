% rules/plg/adjectives.lp
% Pilagá adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 26817: Enseñanza de la lengua pilagá: Gramática pedagógica (Libro 1) (2013), pages 42, 43, 50, 51, 52, 62
%   doc 388757: PILAGA GRAMMAR (GUAYKURUAN FAMILY, ARGENTINA) (2001), pages 128, 131
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   halacayk_type                halacayk
%   adjetivos_nominales          halaraike — grammar: "Adjetivos nominales"
%   adjetivos_nominales_2        haradaik, lokaik, piyodaik — grammar: "Adjetivos nominales"
%   l_type                       l
%   colores_basicos              ledaraike, pagaraike — grammar: "colores básicos"
%   adjetivos_nominales_3        logedaik — grammar: "Adjetivos nominales"
%   colores_basicos_2            malaradaike — grammar: "colores básicos"
%   adjetivos_nominales_4        norotolek — grammar: "Adjetivos nominales"
%   adjetivos_nominales_5        piedaraike — grammar: "Adjetivos nominales"
%   colores_basicos_3            tomaradaike — grammar: "colores básicos"
%   adjetivos_nominales_6        yaik — grammar: "Adjetivos nominales"
%   malade_yk_type               malade-yk
%   adjetivos_nominales_7        poylek — grammar: "Adjetivos nominales"
%   poyo_lek_type                poyo-lek
%   sdeka_type                   sdeka
%   ya_yk_type                   ya-yk
%   adjetivos_verbales           aloqta — grammar: "Adjetivos verbales"
%   adjetivos_verbales_2         cem — grammar: "Adjetivos verbales"
%   colores_basicos_4            dadala — grammar: "colores básicos"
%   adjetivos_verbales_3         dakiko — grammar: "Adjetivos verbales"
%   adjetivos_verbales_4         dañe — grammar: "Adjetivos verbales"
%   adjetivos_verbales_5         hama — grammar: "Adjetivos verbales"
%   kat_oaok_type                kat'oaok
%   ledara_yk_type               ledara-yk
%   adjetivos_nominales_8        letadaik — grammar: "Adjetivos nominales"
%   nesoq_type                   nesoq
%   adjetivos_verbales_6         niliñi — grammar: "Adjetivos verbales"
%   adjetivos_verbales_7         omyi — grammar: "Adjetivos verbales"
%   pe_type                      pe
%   pegs_yk_type                 pegs-yk
%   qalwara_yk_type              qalwara-yk
%   adjetivos_verbales_8         qaqata — grammar: "Adjetivos verbales"
%   adjetivos_verbales_9         qawom — grammar: "Adjetivos verbales"
%   saleka_type                  saleka
%   adjetivos_verbales_10        taworoyi — grammar: "Adjetivos verbales"
%   tomaradayk_type              tomaradayk
%   adjetivos_verbales_11        yabik — grammar: "Adjetivos verbales"
%   adjetivos_nominales_9        yaraik — grammar: "Adjetivos nominales"
%   yi_type                      yi
%   adjetivos_verbales_12        yilowak — grammar: "Adjetivos verbales"
%   colores_basicos_5            yoqobi — grammar: "colores básicos"
% Irregular (listed in data/adjectives.exceptions.tsv): b h
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
