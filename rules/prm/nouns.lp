% rules/prm/nouns.lp
% Kibiri nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 104510: Grammatica della lingua indostana o urdù (1892), pages 62, 66, 89, 90
%   doc 105569: Études sur la langue magyare: Essai de grammaire hongroise (1850), pages 34, 77, 78, 83, 84, 96, 97, 109, 110, 111, 113, 124, 125, 126, 127, 129, 131, 139, 140, 141, 142, 146, 149
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   atyja_type                   atyja
%   nover_type                   nővér
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
