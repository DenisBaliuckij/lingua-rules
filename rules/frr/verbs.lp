% rules/frr/verbs.lp
% Sölrung North Frisian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289537: Karrharde Frisian grammar sketch (2025), pages 5, 17, 18, 45
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   strong_verb                  binn-e — grammar: "Strong verb"
%   weak_verb                    slipp-e — grammar: "Weak verb"
%   mixed_verb                   sin’-e — grammar: "Mixed verb"
% Irregular (listed in data/verbs.exceptions.tsv): badde, bedrege, befēle, bere, besnâie, bid’e, binne, bitte, bliwwe, blėdde, brege, brid’e ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
