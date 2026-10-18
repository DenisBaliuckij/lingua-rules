% rules/koq/nouns.lp
% Ikota nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16983: Description de l’ikota (B25), langue bantu du Gabon. Implémentation de la morphosyntaxe et (2015), pages 127, 157, 197, 198
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   boleae_type                  bòlEÃE
%   moto_type                    mòtò
%   ndu_type                     ndú
%   nueji_type                   nÙEjì
%   aino_type                    ÃínO
%   edo_type                     èdó
%   imana_type                   ìmàñà
%   oku_type                     òkú
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
