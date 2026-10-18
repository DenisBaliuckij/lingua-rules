% rules/mic/adjectives.lp
% Micmac adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 92319: The Micmac Grammar of Father Pacifique (1990), pages 45, 46, 58, 59, 61, 63, 65, 84, 94, 102, 110, 125, 126, 128, 129, 154, 162, 163
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   meski_k_type                 meski'k
%   eule_ik_type                 eule'ik
%   kelu_l_type                  kelu'l
%   maqa_q_type                  maqa'q
%   newta_q_type                 newta'q
%   pita_q_type                  pita'q
%   welamu_k_type                welamu'k
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
