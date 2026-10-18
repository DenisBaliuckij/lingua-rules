% rules/mde/verbs.lp
% Maba verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296441: Phonologie et morphosyntaxe du maba (2009), pages 102, 227, 256, 423, 424
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   kara_type                    kárà
%   anili_type                   ànílì
%   lin_type                     lŋìn
%   ttam_type                    ttám
%   wa_type                      wáŋ
% Irregular (listed in data/verbs.exceptions.tsv): k̀k̀n
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
