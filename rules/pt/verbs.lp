% rules/pt/verbs.lp
% Portuguese verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70362: Gramática normativa da língua portuguesa (2011), pages 173, 174, 175, 176, 178, 180, 181, 182, 183, 184, 185, 188, 193, 198, 207, 209, 210, 213, 214, 215, 216, 217, 218, 221, 222, 387
%   doc 104545: Noções de gramática portuguesa (1889), pages 244, 248, 403
%   doc 389778: A Grammar of the Portuguese Language (1928), pages 298, 365, 372, 373, 375, 377, 378, 382, 384, 385, 406, 410, 411, 412, 413, 419, 421, 422, 423, 424, 425, 426, 427, 430, 433, 436
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   c1a_conjugacao               louvar, rezar, amar, peneirar ... — grammar: "1a conjugação"
%   a_conjugacao                 partir, cuspir, sentir — grammar: "a Conjugação"
%   c2_a_conjugacao              vender — grammar: "2 a Conjugação"
%   ver_type                     ver
%   banhar_se_type               banhar-se
%   apiedar_se_type              apiedar-se
%   agredir_type                 agredir
%   ansiar_type                  ansiar
%   mobiliar_type                mobiliar
%   passear_type                 passear
%   principiar_type              principiar
%   gemir_type                   gemir
%   prevenir_type                prevenir
%   rogar_type                   rogar
%   coser_type                   coser
%   frigir_type                  frigir
%   ajoelhar_se_type             ajoelhar-se
%   concluir_type                concluir
%   inteirar_type                inteirar
%   preterir_type                preterir
%   sair_type                    sair
%   doer_type                    doer
%   enraizar_type                enraizar
%   embainhar_type               embainhar
% Irregular (listed in data/verbs.exceptions.tsv): abolir, caber, construir, crer, despedir, dizer, estar, expedir, fazer, haver, impedir, ir ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
