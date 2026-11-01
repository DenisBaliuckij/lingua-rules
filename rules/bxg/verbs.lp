% rules/bxg/verbs.lp
% Bangala verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 844878: Suggestions for a grammar of "Bangala," the "lingua franca" of the Upper Congo : with dict (1890), pages 36, 40, 41, 43, 46, 48
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   linga_type                   linga
%   kombo_type                   kombo
%   loba_type                    loba
%   sumba_type                   sumba
%   teke_type                    teke
% Irregular (listed in data/verbs.exceptions.tsv): ya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
