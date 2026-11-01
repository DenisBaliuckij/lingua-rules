% rules/say/adjectives.lp
% Zaar adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23996: Zaar Grammatical Sketch (2015), pages 11, 13, 14, 19, 20, 21
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   ll_type                      ll
%   mbo_type                     mbóʧ
%   a_type                       ŋaː
%   class_type                   ʃ
%   class_type_2                 ʤː
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
