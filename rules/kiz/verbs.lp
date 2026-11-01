% rules/kiz/verbs.lp
% Kisi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92276: A Grammar of Kisi: A Southern Atlantic Language (1995), pages 91, 123, 236, 237, 244, 246, 258, 259
%   doc 296310: The phonology and morphology of Kisi (1988), pages 140, 141, 149, 272, 273, 274, 289
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   a_e_group                    baa — grammar: "a/e group"
%   e_o_group                    diondu — grammar: "e/o group"
%   mal_type                     mal
%   e_o_group_2                  som — grammar: "e/o group"
%   regular_verbs                cimbu — grammar: "Regular verbs"
%   regular_verbs_2              cimbOO — grammar: "Regular verbs"
% Irregular (listed in data/verbs.exceptions.tsv): kiol, kiolOO
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
