% rules/mxk/nouns.lp
% Monumbo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 848865: Monumbo Grammar (n.d.), pages 3, 4, 10, 11, 24, 26, 45, 46
%   doc 848867: Die Monumbo-Sprache: Grammatik und Wörterverzeichnis (1875), pages 32, 37, 39, 41, 62, 83, 84, 100, 105, 110, 120, 121, 122, 124, 125, 130, 131, 138
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   mr_type                      m£r
%   nan_type                     nan
%   ngeten_type                  ngeten
%   todra_type                   todra
%   nandin_type                  nandin
%   okdm_type                    okdm
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
