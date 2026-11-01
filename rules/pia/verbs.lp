% rules/pia/verbs.lp
% Pima Bajo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 3411: A Grammar of Nevome (1982), pages 37, 73
%   doc 3412: Textos y gramática del pima bajo (1993), pages 48, 63
%   doc 3414: Pima Bajo: A Grammatical Sketch of Pima Bajo (1996), pages 15, 16, 17, 24
%   doc 849464: Textos y gramatica del Pima Bajo (Texts and Grammar of the Lower Pima) (1993), pages 49, 59, 61
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   negative_stative_paradigm    i-hovi — grammar: "negative stative paradigm"
%   aahim_type                   aahim
%   basim_type                   basim
%   biihim_type                  biihim
%   doalim_type                  doalim
%   gi_ilim_type                 gi'ilim
%   gigim_type                   gigim
%   hiasim_type                  hiasim
%   huugim_type                  huugim
%   vakim_type                   vakim
% Irregular (listed in data/verbs.exceptions.tsv): dah, gii, kiik, mir, mua'a
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
