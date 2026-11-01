% rules/hoc/verbs.lp
% Ho verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388225: Ho Grammar (With Vocabulary) (1915), pages 28, 53, 55, 59, 66, 84, 88, 93, 96
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   emen_type                    emen
%   dguakadd_type                dguakadd
%   mend_type                    mend
%   dgukedding_type              dgukedding
%   emaitanredowg_type           emaitanredowg
%   sukuinytand_type             sukuinytand
%   sukutanding_type             sukutanding
%   gititanreaoing_type          gititanreaoing
%   dguetanredoing_type          dguetanredoing
%   intransitive_verbs           gitiding — grammar: "intransitive verbs"
%   gitikde_type                 gitikde
%   intransitive_verbs_2         gititanding — grammar: "intransitive verbs"
%   intransitive_verbs_3         gitiakanding — grammar: "intransitive verbs"
% Irregular (listed in data/verbs.exceptions.tsv): hobdo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
