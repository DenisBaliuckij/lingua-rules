% rules/pma/nouns.lp
% Paama nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 895356: The Language of Paama (New Hebrides) (1979), pages 176, 178, 183, 248
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   possessive_nominal           aa — grammar: "possessive nominal"
%   hzzu_type                    hZZu
%   meto_type                    meto
% Irregular (listed in data/nouns.exceptions.tsv): mo, ono, so, tuo, urzli
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
