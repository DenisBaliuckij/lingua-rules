% rules/myu/nouns.lp
% Mundurukú nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 46703: Gramática Munduruku (1974), pages 44
%   doc 389906: Aspectos da Língua Munduruku (2004), pages 42, 50, 54, 58, 81, 170, 188, 190, 191, 260, 313, 316, 317, 318, 319
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   o3da3xi3jo3_type             o³da³xi³jo³
%   o3sm3_type                   o³søm³
%   we3ko3a2da3_type             we³ko³¿a²da³
%   we3ta2dop3_type              we³ta²dop³
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
