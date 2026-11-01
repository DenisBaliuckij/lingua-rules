% rules/bvm/adjectives.lp
% Bamunka adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14622: The Bamunka Noun Phrase (2013), pages 32, 34, 68, 74, 79
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   fe_fe_type                   fe᷇-ꜜfê
%   l_n_type                     lə́ŋ-nə́
%   sh_sh_type                   shʉə́-shʉə́
%   tie_tie_type                 tiê-ꜜtié
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
