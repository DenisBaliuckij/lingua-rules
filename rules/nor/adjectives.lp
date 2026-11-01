% rules/nor/adjectives.lp
% Norwegian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 363: A reference guide to the syntax of North American Norwegian (2025), pages 92
%   doc 387259: Lær deg norsk! Corso di lingua norvegese Livelli A1-B1 del Quadro Comune Europeo di Riferi (2015), pages 50, 51, 53, 54, 142, 206
%   doc 389658: Norwegian (2002), pages 15, 17, 22
%   doc 942422: Norwegian Language Teaching Materials Development Project: Final Report (1967), pages 279, 280, 283
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   gul_type                     gul, dyr, fin, god ...
%   billig_type                  billig, norsk, vanskelig
%   bla_type                     blå, grå
%   ekte_type                    ekte, moderne, spennende, stille
%   fri_type                     fri, ny
%   gammel_type                  gammel
%   grnn_type                    grønn
%   vakker_type                  vakker
%   flink_type                   flink, impulsiv, jordnær, jovial ...
%   forbannet_type               forbannet, glad, hissig, korrekt ...
%   sikker_type                  sikker, usikker
%   sjalu_type                   sjalu
% Irregular (listed in data/adjectives.exceptions.tsv): annen, liten
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
