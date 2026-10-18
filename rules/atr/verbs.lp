% rules/atr/verbs.lp
% Waimiri Atroari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389770: Waimiri Atroari Grammar: Some Phonological, Morphological, and Syntactic Aspects (2003), pages 87, 89
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ape_type                     ape
%   ee_type                      ee
%   ineh_type                    ineh
%   myryky_type                  myryky
%   rymy_type                    rymy
%   yma_type                     yma
%   ini_type                     ini
%   wen_ta_type                  wen-ta
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
