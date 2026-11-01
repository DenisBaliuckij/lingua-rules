% rules/mri/nouns.lp
% Māori nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388584: Maori (1996), pages 7
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   matua_type                   matua
%   tamaiti_type                 tamaiti
%   tangata_type                 tangata
%   teina_type                   teina
%   tipuna_type                  tipuna
%   tuahine_type                 tuahine
%   tuakana_type                 tuakana
%   wahine_type                  wahine
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
