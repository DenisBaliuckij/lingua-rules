% rules/tbo/verbs.lp
% Tawala verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289582: A grammar of Tawala: An Austronesian language of the Milne Bay area, Papua New Guinea (1997), pages 84, 135, 164, 277, 278
%   doc 289583: Tawala Grammar: A Functional Approach (1991), pages 185
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   baha_type                    baha
%   wi_gei_type                  wi-gei
%   m_boina_type                 m-boina
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
