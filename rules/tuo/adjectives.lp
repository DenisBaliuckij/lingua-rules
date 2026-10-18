% rules/tuo/adjectives.lp
% Tucano adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23885: Pequena gramática e dicionário da língua tucana (n.d.), pages 15, 16, 19, 20, 22, 23, 24, 25, 27, 28, 29
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   adjetivo_cardinal            akpe-muca-bapálitina — grammar: "Adjetivo cardinal"
%   adjetivo_cardinal_2          akpe-muca-itíana — grammar: "Adjetivo cardinal"
%   adjetivo_cardinal_3          akpe-muca-nique — grammar: "Adjetivo cardinal"
%   adjetivo_cardinal_4          akpe-muca-peana — grammar: "Adjetivo cardinal"
%   adjetivo_cardinal_5          bapálitina — grammar: "Adjetivo cardinal"
%   adjetivo_cardinal_6          nicárnuqaena — grammar: "Adjetivo cardinal"
%   adjetivos_ordinais           nimetacangue — grammar: "Adjetivos ordinais"
%   adjetivo_cardinal_7          peana — grammar: "Adjetivo cardinal"
%   adjetivo_cardinal_8          peámuquena — grammar: "Adjetivo cardinal"
%   adjetivos_ordinais_2         sirotucangue — grammar: "Adjetivos ordinais"
%   adjetivos_ordinais_3         tóberocangue — grammar: "Adjetivos ordinais"
%   adjetivo_cardinal_9          itiana — grammar: "Adjetivo cardinal"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
