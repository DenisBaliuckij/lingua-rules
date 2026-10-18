% rules/wol/verbs.lp
% Wolof verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 109618: Grammaire Wolof (n.d.), pages 29, 82, 84, 85, 86, 88, 90, 91, 92, 93, 94, 100, 102, 103, 104, 105, 107, 108, 111, 114, 117, 118, 124, 125, 193
%   doc 841625: Langues Sénégalaises (1865), pages 25, 26, 27, 76
%   doc 841633: Grammaire de la langue volofe (n.d.), pages 87, 88, 89, 138, 140, 144, 152, 194, 195, 196, 197, 198, 199, 200, 202, 205, 206, 225, 231, 232, 246
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verbe_de_mouvement           bindă — grammar: "verbe de mouvement"
%   binda_type                   binda
%   bindi_type                   bindi
%   itte_type                    itte
%   sop_type                     sop
%   fada_type                    fada
%   dematu_type                  dematu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
