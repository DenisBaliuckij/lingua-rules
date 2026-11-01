% rules/was/verbs.lp
% Washo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389629: A Grammar of the Washo Language (1964), pages 461
%   doc 389630: The Washo Language of East Central California and Nevada (1907), pages 18, 19, 31, 32, 35
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ugatsap_type                 ugatsap
%   intransitive                 afial — grammar: "intransitive"
%   intransitive_2               bemukul — grammar: "intransitive"
%   dam_type                     dam
%   galdmi_type                  galdmi
%   giti_type                    giti
%   ikilhki_type                 ikilhki
%   galami_type                  galami
%   intransitive_3               ibi — grammar: "intransitive"
%   intransitive_4               ime — grammar: "intransitive"
%   intransitive_5               iye — grammar: "intransitive"
%   intransitive_6               muc — grammar: "intransitive"
%   yatki_type                   yatki
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
