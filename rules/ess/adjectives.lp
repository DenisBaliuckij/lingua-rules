% rules/ess/adjectives.lp
% Central Siberian Yupik adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389509: A Grammatical Sketch of Siberian Yupik Eskimo as spoken on St. Lawrence Island, Alaska (1979), pages 51
%   doc 853851: Материалы по языку азиатских эскимосов (1949), pages 50, 57, 58, 89, 231, 233, 238, 239, 242, 245
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   class_type                   ріпіпга
%   class_type_2                 ріпіігі
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
