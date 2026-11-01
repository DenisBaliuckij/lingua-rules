% rules/mle/nouns.lp
% Manambu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388186: The Manambu Language of East Sepik, Papua New Guinea (2004), pages 160, 253, 619
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   na_type                      na
%   kudi_type                    kudi
%   pa_t_type                    pa:t
% Irregular (listed in data/nouns.exceptions.tsv): ñan
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
