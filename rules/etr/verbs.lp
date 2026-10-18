% rules/etr/verbs.lp
% Edolo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388303: Aspects of Edolo Grammar (1994), pages 49, 72, 81, 82, 160
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   diga_type                    diga
%   existential_verbs            dilo — grammar: "existential verbs"
%   gobe_type                    gobe, hamo
%   existential_verbs_2          nelo — grammar: "existential verbs"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
