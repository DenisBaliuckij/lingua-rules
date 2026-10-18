% rules/ku/nouns.lp
% Northern Kurdish (Kurmanji) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9636: Kurmanji Kurdish: A Reference Grammar with Selected Readings (n.d.), pages 18, 27, 28, 41, 44, 45, 47, 48, 49, 53, 54, 56, 57, 58, 63, 66, 70, 72, 74, 78
%   doc 292691: Grammatica e vocabolario della lingua Kurda (1787), pages 15, 16
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   jin_type                     jin
%   mirov_type                   mirov
%   ode_type                     ode
%   gundi_type                   gundî
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
