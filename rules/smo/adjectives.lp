% rules/smo/adjectives.lp
% Samoan adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 896255: Grammar and vocabulary of the Samoan language, together with remarks on some of the points (1852), pages 18, 24, 25, 28, 30, 36
%   doc 897831: Samoan Language: A Manual for the Study and Teaching of the Samoan Language as Taught by P (1975), pages 123, 174, 184, 232, 355
%   doc 924563: Samoan For Missionaries (1983), pages 82, 87, 103, 326, 350, 375, 455
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   pa_epa_e_type                pa'epa'e
%   tele_type                    tele
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
