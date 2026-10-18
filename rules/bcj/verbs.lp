% rules/bcj/verbs.lp
% Bardi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 45994: A Grammar of Bardi (2012), pages 422, 423, 740, 741
%   doc 46001: Bardi verb morphology (northwestern Australia) (1975), pages 99, 107, 192
%   doc 46004: A Learner's Guide to the Bardi Language (2015), pages 173, 176
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   imbamarragal_type            imbamarragal
%   inamarragal_type             inamarragal
%   ingamalagal_type             ingamalagal
%   intransitive_roots           banyi — grammar: "intransitive roots"
%   intransitive_roots_2         gama — grammar: "intransitive roots"
%   transitive_roots             ibi — grammar: "transitive roots"
%   transitive_roots_2           jala — grammar: "transitive roots"
%   intransitive_roots_3         jarrala — grammar: "intransitive roots"
%   intransitive_roots_4         marra — grammar: "intransitive roots"
%   mulgu_type                   mulgu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
