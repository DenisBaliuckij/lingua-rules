% rules/tnm/nouns.lp
% Tabla (Tepera dialect) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8: An outline grammar of the Tepera dialect of Tabla, a non-Austronesian language of Irian Ja (1985), pages 14, 15, 20, 21
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
% Irregular (listed in data/nouns.exceptions.tsv): ?san, aka, deko, do, kasi, keméng, koti, meso, miré, méngke, sese, éneng
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
