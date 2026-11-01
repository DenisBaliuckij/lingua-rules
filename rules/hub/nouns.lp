% rules/hub/nouns.lp
% Wampis nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41192: A Grammar of Wampis (2015), pages 374, 381, 507, 529, 531, 691, 848
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   matau_type                   matáu
%   nua_type                     núa
%   tsunki_type                  t͡súnki
%   tai_type                     t͡ʃái
%   uara_type                    ʃuára
%   type_ii                      muuka — grammar: "Type II"
%   type_i                       nauantu — grammar: "Type I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
