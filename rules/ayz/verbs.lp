% rules/ayz/verbs.lp
% Maybrat verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 257: A grammar of Maybrat: A language of the Bird’s Head Peninsula, Papua Province, Indonesia (2007), pages 74, 80, 86
%   doc 84533: A grammar of Maybrat: a language of the Bird's Head Peninsula, Papua Province, Indonesia (2007), pages 74, 80, 86
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   aut_type                     aut
%   frok_type                    frok
%   no_type                      no
%   oa_type                      oa
%   tien_type                    tien
%   a_initial_stems              aim — grammar: "/a/-initial stems"
%   a_initial_stems_2            amo, ata, awia — grammar: "/a/-initial stems"
%   a_initial_stems_3            aus — grammar: "/a/-initial stems"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
