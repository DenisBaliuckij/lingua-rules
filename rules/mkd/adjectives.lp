% rules/mkd/adjectives.lp
% Macedonian adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389015: Macedonian (LW/M 117) (2002), pages 16, 18, 21, 26, 29
%   doc 389016: Macedonian (2005), pages 16, 17, 27, 32, 33
%   doc 389017: A Grammar of the Macedonian Literary Language (1952), pages 51, 54, 56, 60, 91, 94, 106
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   uninflecting                 fer, taze — grammar: "uninflecting"
%   number_only                  kasmetlija — grammar: "number only"
%   m_i                          makedonski — grammar: "M-i"
%   m                            nov — grammar: "M-Ø"
%   n_e                          ptic#ji — grammar: "N-e"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
