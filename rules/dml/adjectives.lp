% rules/dml/adjectives.lp
% Dameli adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389973: A Grammatical Description of Dameli (2013), pages 93, 96, 104, 108, 120, 140
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   variable_adjectives          aarida — grammar: "variable adjectives"
%   variable_adjectives_2        awaluka — grammar: "variable adjectives"
%   variable_adjectives_3        baloo — grammar: "variable adjectives"
%   variable_adjectives_4        krnaa — grammar: "variable adjectives"
%   variable_adjectives_5        kʰušala — grammar: "variable adjectives"
%   variable_adjectives_6        laic̣ʰaa — grammar: "variable adjectives"
%   variable_adjectives_7        leeṇḍa — grammar: "variable adjectives"
%   variable_adjectives_8        niila — grammar: "variable adjectives"
%   variable_adjectives_9        suree — grammar: "variable adjectives"
%   variable_adjectives_10       učʰuṭa — grammar: "variable adjectives"
%   variable_adjectives_11       čitra — grammar: "variable adjectives"
%   variable_adjectives_12       čukra — grammar: "variable adjectives"
%   variable_adjectives_13       šumaa — grammar: "variable adjectives"
%   variable_adjectives_14       ɡoora — grammar: "variable adjectives"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
