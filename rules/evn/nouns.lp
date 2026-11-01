% rules/evn/nouns.lp
% Evenki nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 841147: Evenki Grammar (2014), pages 10, 17, 18, 20, 24, 26, 27, 30
%   doc 841166: Evenki (2007), pages 163, 220, 221, 224, 225, 228, 229, 235, 279, 282
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   d_u_type                     d'u
%   oron_type                    oron
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
