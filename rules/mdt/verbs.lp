% rules/mdt/verbs.lp
% Lembama (Okondja) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289440: Essai de grammaire fonctionnelle du lembaama d’Okondja (B.62), langue bantu du sud-est du  (2025), pages 263, 264, 265, 266, 269, 271, 272, 275, 277, 278, 279
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   a_type                       ʤà
%   maa_type                     màʤà
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
