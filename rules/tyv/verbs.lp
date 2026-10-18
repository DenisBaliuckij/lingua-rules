% rules/tyv/verbs.lp
% Tuvan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388814: Tyvan (1999), pages 11, 17
%   doc 388815: The Phonology and Morphology of Jungar Tuva (Mawkanuli) (1999), pages 155, 156, 157, 159, 177, 179, 182, 183, 186, 194, 195
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   bil_type                     bil, gel
%   ula_type                     ula
%   ayt_type                     ayt
%   iit_type                     iit
%   sokta_type                   sokta
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
