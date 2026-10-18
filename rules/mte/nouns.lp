% rules/mte/nouns.lp
% Mono-Alu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73767: Topics in the Grammar of Mono-Alu (Oceanic) (2018), pages 156, 175, 180, 342
%   doc 289638: A grammatical analysis of Mono-Alu (Bougainville Straits, Solomon Islands) (1986), pages 15
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   monomoraic_reduplication     Pavaisa — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_2   hanua — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_3   kanega — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_4   kui — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_5   lalaPaha — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_6   magota — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_7   mamaeha — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_8   natu — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_9   navoko — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_10  paoPa — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_11  piPala — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_12  porohaulu — grammar: "monomoraic reduplication"
%   monomoraic_reduplication_13  soe — grammar: "monomoraic reduplication"
% Irregular (listed in data/nouns.exceptions.tsv): tauPiPi, tiong, vataha
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
