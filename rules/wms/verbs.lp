% rules/wms/verbs.lp
% Wambon verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 817746: The Morphology of Wambon of the Irian Jaya Upper-Digul Area: With an introduction to its p (1992), pages 40, 41, 42, 46, 51
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   takhimo_type                 takhimo
%   en_type                      en
%   kekhet_type                  kekhet
%   ndat_type                    ndat
%   ko_type                      ko
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
