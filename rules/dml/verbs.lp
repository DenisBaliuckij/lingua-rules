% rules/dml/verbs.lp
% Dameli verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389973: A Grammatical Description of Dameli (2013), pages 93, 96, 104, 108, 120, 140
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   transitive                   leekʰan — grammar: "transitive"
%   second_causative             matran — grammar: "second causative"
%   intransitive                 muṣan — grammar: "intransitive"
%   first_causative              naɡan — grammar: "first causative"
%   chaar_type                   c̣ʰaar, kur
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
