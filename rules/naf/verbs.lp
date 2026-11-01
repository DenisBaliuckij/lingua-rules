% rules/naf/verbs.lp
% Nabak verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 69269: Morphology, syntax and cohesion in Nabak, Papua New Guinea (1998), pages 35, 55
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   object_incorporated_verb_to_give na — grammar: "object-incorporated verb 'to give'"
%   object_incorporated_verb_to_leave ne — grammar: "object-incorporated verb 'to leave'"
%   object_incorporated_verb_hit no — grammar: "object-incorporated verb 'hit'"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
