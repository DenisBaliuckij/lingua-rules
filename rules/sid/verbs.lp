% rules/sid/verbs.lp
% Sidaama verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8751: A Grammar of Sidaama (Sidamo), A Cushitic Language of Ethiopia (2007), pages 165, 168, 225, 232, 241, 249, 366, 404, 420, 421, 749
%   doc 853568: Manuale di Sidamo (n.d.), pages 2
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   it_type                      it
%   hais_type                    hais
%   haiss_type                   haiss
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
