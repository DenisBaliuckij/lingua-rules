% rules/fuf/nouns.lp
% Pular nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19522: Teaching Grammar of Pular (2017), pages 17, 35, 36, 39, 42, 58, 59, 65, 88, 89, 121, 124
%   doc 19524: Learner's Guide to Pular (Fuuta Jallon) (n.d.), pages 20, 36, 56, 101, 102, 121, 122, 123, 124
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ngii_class                   baalii — grammar: "ngii class"
%   ngii_class_2                 balkii — grammar: "ngii class"
%   bireedi_type                 bireedi
%   biti_type                    biti
%   ngii_class_3                 coongii — grammar: "ngii class"
%   ngii_class_4                 gabbii — grammar: "ngii class"
%   gangu_type                   gangu
%   gerto_type                   gerto
%   ngii_class_5                 gilngii — grammar: "ngii class"
%   ngii_class_6                 gurii — grammar: "ngii class"
%   julde_type                   julde
%   kanu_type                    kanu
%   kaydi_type                   kaydi
%   ngii_class_7                 kulii — grammar: "ngii class"
%   leemunne_type                leemunne
%   lewru_type                   lewru
%   mango_type                   mango
%   misal_type                   misal
%   nowru_type                   nowru
%   oto_type                     oto
%   pirin_type                   pirin
%   piya_type                    piya
%   pompiteeri_type              pompiteeri
%   sonsoli_type                 sonsoli
%   taalol_type                  taalol
%   ial_type                     ƴi’al
%   andu_type                    ɓandu
%   oggol_type                   ɓoggol
%   engal_type                   ɗengal
%   ngii_class_8                 ɲaakii — grammar: "ngii class"
%   ngii_class_9                 ɲuungii — grammar: "ngii class"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
