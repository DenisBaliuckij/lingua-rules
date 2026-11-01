% rules/arn/verbs.lp
% Mapudungun verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 10981: Mapudungun: El habla mapuche (2006), pages 87, 95, 96, 97, 120, 121, 150
%   doc 11070: Gramática araucana (n.d.), pages 18, 42
%   doc 388570: A Grammar of Mapuche (2010), pages 118, 387, 388
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kon_type                     kon
%   tripa_type                   tripa
%   intransitive_verbs           amu — grammar: "intransitive verbs"
%   pi_type                      pi
%   leli_type                    leli, mütrüm
%   konn_type                    konn
%   nien_type                    nien
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
