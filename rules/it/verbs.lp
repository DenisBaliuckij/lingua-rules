% rules/it/verbs.lp
% Italian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2592: Italienische Grammatik (1905), pages 231, 255, 256, 262
%   doc 846708: A Grammar of the Italian Language (n.d.), pages 98, 218, 239, 245, 264, 273, 294, 295, 298, 304, 325, 326, 331, 332, 368, 369
%   doc 846709: A New Italian Grammar, on a Plan which Will Greatly Facilitate a Practical as Well as a Th (n.d.), pages 54, 92, 108, 113, 133
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   a_konjugation                portare — grammar: "a-Konjugation"
%   sentire_type                 sentire
%   chiedere_type                chiedere
%   abborrere_type               abborrere
%   pentirsi_type                pentirsi
%   lusingarsi_type              lusingarsi
% Irregular (listed in data/verbs.exceptions.tsv): andare, apparire, bollire, concedere, conoscere, convellere, cucere, cucire, dare, dire, dissuadere, doler-si ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
