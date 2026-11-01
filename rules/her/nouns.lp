% rules/her/nouns.lp
% Herero nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16125: Otjiherero Grammar Manual (n.d.), pages 17
%   doc 844156: Grundzüge einer Grammatik des Herero (im westlichen Afrika) nebst einem Wörterbuche (1875), pages 28, 44, 58
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   vii_classe                   Omu-herero — grammar: "VII. Classe"
%   omu_kazendu_type             Omu-kazendu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
