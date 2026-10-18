% rules/umb/verbs.lp
% Umbundu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7988: Grammatica do Umbundu ou lingua de Benguella (1894), pages 33, 34, 76, 80, 87
%   doc 844270: Umbundu Grammar (Part II: Quimbundo Morphology and Principles of Syntax) (n.d.), pages 26, 28, 31, 32, 35, 37, 42, 62, 67, 69, 73, 76
%   doc 844276: Gramática do Umbundo: Morfologia e princípios de sintaxe (n.d.), pages 22, 23, 26, 31, 32, 33
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kutumiua_type                kutumiua
%   kukala_type                  kukala
%   enda_type                    enda
%   iza_type                     iza
%   feta_type                    feta
%   kurikutulula_type            kurikutulula
%   tuma_type                    tuma
%   mona_type                    mona
%   bange_type                   bange, bixile, bokole, sumbe
%   jikujuila_type               jikujuila
%   kubambuka_type               kubambuka
%   sote_type                    sote
%   tie_type                     tie
%   oku_feta_type                oku-feta
%   bambuka_type                 bambuka
%   bandama_type                 bandama
%   futuro_3_simples             ngakabanga — grammar: "FUTURO 3.° (SIMPLES)"
%   ngojobanga_type              ngojobanga
%   kubanga_banga_type           kubanga-banga, kubanga-jinga
%   kuringa_type                 kuringa
% Irregular (listed in data/verbs.exceptions.tsv): kuban d ama, oku-ti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
