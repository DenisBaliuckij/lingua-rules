% rules/nna/verbs.lp
% Nyangumarta verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 793582: Nyangumarta: A language of the Pilbara region of Western Australia (2004), pages 82, 116, 190, 265, 274, 281, 437, 438, 439
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   rn_conjugation               paji — grammar: "RN Conjugation"
% Irregular (listed in data/verbs.exceptions.tsv): nga, paji-RN 'bite, wani
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
