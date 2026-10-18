% rules/ydd/verbs.lp
% Yiddish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388703: Yiddish (2010), pages 16, 17, 18
%   doc 388704: Yiddish: A Survey and a Grammar (1979), pages 241, 242, 243, 257, 258, 259, 260, 263, 265, 266, 268, 269, 272, 277, 279, 281, 282, 283, 284, 285, 289, 312
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   obn_type                     obn
%   viier_type                   viier
% Irregular (listed in data/verbs.exceptions.tsv): bring, darf, kiier, mjz, nUig, toig, tuttr, vil, zol
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
