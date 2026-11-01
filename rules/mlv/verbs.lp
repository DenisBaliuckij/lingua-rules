% rules/mlv/verbs.lp
% Mwotlap verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 895694: The Oceanic Languages (2002), pages 178, 195, 371, 719, 725, 854
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   sac_type                     sac
%   run_type                     run
%   class_iii_intransitive       aniva — grammar: "Class III intransitive"
%   class_i_intransitive         ika — grammar: "Class I intransitive"
%   class_ii_intransitive        vau — grammar: "Class II intransitive"
% Irregular (listed in data/verbs.exceptions.tsv): be, eat, take
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
