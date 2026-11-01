% rules/rng/verbs.lp
% Ronga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 846316: Subsídios para a grammatica landina (xi-jonga), dialecto fallado pelos indígenas de Louren (1897), pages 39, 42, 43, 44, 45, 46
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   comer_type                   comer
%   janje_type                   janje
%   janja_type                   janja
% Irregular (listed in data/verbs.exceptions.tsv): cuni, da
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
