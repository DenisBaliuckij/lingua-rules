% rules/lif/nouns.lp
% Limbu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71793: A Descriptive Grammar of Chhatthare Limbu (2007), pages 51, 119, 129, 130, 138, 139, 142, 143, 147, 148, 163, 197, 221, 263
%   doc 74696: A Grammar of Limbu (1987), pages 53, 191, 217, 218, 219, 220, 418
%   doc 74703: Concise Limbu Grammar and Dictionary (n.d.), pages 100, 173, 197, 200, 208, 218, 222, 225, 232
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   napmi_type                   napmi, pu, wa
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
