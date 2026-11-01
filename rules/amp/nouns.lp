% rules/amp/nouns.lp
% Alamblak nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9812: The Alamblak language of Papua New Guinea (East Sepik) (1984), pages 56, 57, 81, 122, 151, 155, 322
%   doc 9813: A Grammar of Alamblak (Papua New Guinea) (1979), pages 84
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   yira_type                    yira
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
