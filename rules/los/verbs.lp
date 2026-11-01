% rules/los/verbs.lp
% Loniu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289681: A Grammar and Lexicon of Loniu, Papua New Guinea (1994), pages 45, 62, 83, 114
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_ii                     la — grammar: "Class II"
%   class_i                      me — grammar: "Class I"
%   class_ii_2                   mat — grammar: "Class II"
%   m_type                       m£
%   class_i_2                    ce?£h — grammar: "Class I"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
