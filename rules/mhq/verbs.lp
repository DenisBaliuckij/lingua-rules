% rules/mhq/verbs.lp
% Mandan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 379: A grammar of Mandan (2024), pages 226, 418, 423, 435
%   doc 651570: Mandan Grammar (1923), pages 8, 10, 13, 17, 27, 29
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   e_reh_type                   e'reh
%   tad_type                     tad
%   a_type                       a
%   kina_type                    kina
%   kixe_type                    kixe
% Irregular (listed in data/verbs.exceptions.tsv): e'pe, éehee
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
