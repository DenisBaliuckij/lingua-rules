% rules/goh/verbs.lp
% Old High German verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388432: Althochdeutsche Grammatik I: Laut- und Formenlehre (2004), pages 192, 196, 197, 201, 209, 215, 225, 301
%   doc 388434: Abriß der althochdeutschen Grammatik mit Berücksichtigung des Altsächsischen (1989), pages 34, 40
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   klasse_i_verba_auf_jan       adennen — grammar: "Klasse I (Verba auf-jan)"
%   klasse_i_verba_auf_jan_2     frummen — grammar: "Klasse I (Verba auf-jan)"
%   klasse_i_verba_auf_jan_3     nerien — grammar: "Klasse I (Verba auf-jan)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
