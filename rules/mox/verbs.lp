% rules/mox/verbs.lp
% Momu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 217: A grammar of Momu, a language of Papua New Guinea (2016), pages 106, 120, 125, 148, 150, 151, 153, 231, 271, 272, 280, 321, 663
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   won_type                     won
%   kwen_type                    kwen, oton
%   saspar_type                  saspar
%   uy_type                      uy
%   high_transitive_verbs        kafok — grammar: "high-transitive verbs"
%   nabyenetin_type              nabyenetin
%   transitive_verbal_number_pair napwen — grammar: "transitive verbal number pair"
%   on_type                      on, byenetin
%   otoktai_type                 otoktai
%   pin_type                     pin
%   high_transitive_verb         yeyen — grammar: "high-transitive verb"
%   as_type                      as
%   basic_motion_verbs           go — grammar: "basic motion verbs"
%   key_type                     key
%   nukiy_type                   nukiy
%   peeni_type                   peeni
%   taty_type                    taty
%   woy_type                     woy
% Irregular (listed in data/verbs.exceptions.tsv): ai
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
