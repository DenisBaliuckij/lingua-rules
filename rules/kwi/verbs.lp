% rules/kwi/verbs.lp
% Awa Pit verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389047: A grammar of Awa Pit (Cuaiquer): An indigenous language of south-western Colombia (1997), pages 84, 112, 210
%   doc 389048: Awa-Kwaiker: An outline grammar of a Colombian/Ecuadorian language, with a cultural sketch (1992), pages 120, 121, 122
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   pana_type                    pana
%   uz_type                      uz
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
