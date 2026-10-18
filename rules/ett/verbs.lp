% rules/ett/verbs.lp
% Etruscan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71671: Zikh Rasna: A Manual of the Etruscan Language and Inscriptions (2008), pages 36, 37, 42, 46
%   doc 388568: Etruscan (2004), pages 13
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   am_type                      am
%   mena_type                    mena
%   tur_type                     tur
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
