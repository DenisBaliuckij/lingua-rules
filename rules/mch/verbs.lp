% rules/mch/verbs.lp
% Ye'kwana verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 140: Grammaire fonctionnelle-typologique du ye'kwana, langue caribe du Venezuela (2011), pages 132, 228, 235, 306, 342, 343, 344
%   doc 388351: Grammaire fonctionnelle-typologique du Ye'kwana (2011), pages 132, 228, 235, 306, 342, 343, 344
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ene_type                     ene
%   conjugaisons_de_serie_i_de_la_copule copule — grammar: "Conjugaisons de série I de la copule"
%   jonumu_type                  jönümü
%   ku_ka_type                   kü'ka
%   oowanoma_type                oowanoma
%   oowasincho_type              ööwasinchö
%   unuku_type                   ünükü
% Irregular (listed in data/verbs.exceptions.tsv): eiya, ejö, enejö, ütömö
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
