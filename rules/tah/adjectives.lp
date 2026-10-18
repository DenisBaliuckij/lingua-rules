% rules/tah/adjectives.lp
% Tahitian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 895525: Conversational Tahitian: An Introduction to the Tahitian Language of French Polynesia (1970), pages 23, 35
%   doc 898059: A new grammar of the Tahitian dialect of the Polynesian language : together with brief rea (1920), pages 165, 166
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   maita_i_type                 maita'i
%   poto_type                    poto
%   rahi_type                    rahi
%   roa_type                     roa
%   ino_type                     ino
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
