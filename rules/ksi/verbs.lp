% rules/ksi/verbs.lp
% I'saka verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 256: I'saka: A sketch grammar of a language of north-central New Guinea (2004), pages 64, 76, 79, 122
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   akalou_type                  akalou
%   iy_type                      iy
%   oung_type                    oung
% Irregular (listed in data/verbs.exceptions.tsv): au, ele, ng, sung, ung
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
