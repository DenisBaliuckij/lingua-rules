% rules/aiw/verbs.lp
% Aari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388628: Notes on the Aari Language (1985), pages 50, 51, 52, 53, 54, 55, 58, 59, 60, 64
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   interrogative_paradigms      ba? — grammar: "interrogative paradigms"
%   qaal_type                    qaal
%   baba_d_type                  baba?d
%   i_type                       ?i
% Irregular (listed in data/verbs.exceptions.tsv): ba?- bring, da.a.y, doq, gay, kay, siir, tey
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
