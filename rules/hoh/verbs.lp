% rules/hoh/verbs.lp
% Hobyot verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289455: Le hobyot : description grammaticale d’une langue sudarabique moderne (2023), pages 68, 73, 94, 99, 117, 121, 180, 197, 199, 201, 202, 206
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dfr_type                     dfr
%   srv_type                     ṣrv
%   type_skrdud                  skərdúd — grammar: "type skərdúd"
%   fr_type                      fðr
%   t1                           CCv — grammar: "T1"
%   t1_2                         CCγ — grammar: "T1"
%   t1_3                         CyC — grammar: "T1"
%   t1_4                         wCC — grammar: "T1"
%   t1_5                         wγC — grammar: "T1"
%   type_ga                      któb — grammar: "Type Ga"
%   type_ga_2                    lbód — grammar: "Type Ga"
%   type_ga_3                    mkór — grammar: "Type Ga"
%   type_ga_4                    rsúm — grammar: "Type Ga"
%   type_ga_5                    skóf — grammar: "Type Ga"
%   type_ga_6                    skún — grammar: "Type Ga"
%   ksu_type                     ksú
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
