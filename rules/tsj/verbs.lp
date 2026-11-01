% rules/tsj/verbs.lp
% Tshangla verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389125: A Grammar of Tshangla (2010), pages 71, 79, 86, 216, 223
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   non_mirative_affirmative_verb_paradigm di — grammar: "non-mirative affirmative verb paradigm"
%   vowel_final_roots            pha — grammar: "vowel-final roots"
%   obstruent_final_roots        yek — grammar: "obstruent-final roots"
% Irregular (listed in data/verbs.exceptions.tsv): cf.ibe 'to write, dile 'to go, kebe 'to send, kele 'to give birth
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
