% rules/gnw/verbs.lp
% Guaraní verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 105475: Guarani Ñe’ẽtekuaa: Gramática Guarani (2020), pages 123, 125, 131, 133, 165, 167, 169, 171
%   doc 388231: Descripción fonológica y morfosintáctica de una variedad de la lengua guaraní hablada en l (2011), pages 99
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   verbo_oral                   aguata — grammar: "Verbo Oral"
%   verbo_oral_2                 agueruakue — grammar: "Verbo Oral"
%   verbo_nasal                  ame’ẽ, amoĩakue — grammar: "Verbo Nasal"
%   verbo_oral_3                 guata — grammar: "Verbo Oral"
%   verbo_nasal_2                ha’ãmimi — grammar: "Verbo Nasal"
%   verbo_oral_4                 hupytymimi — grammar: "Verbo Oral"
%   verbo_oral_5                 hókatu — grammar: "Verbo Oral"
%   verbo_oral_6                 johei — grammar: "Verbo Oral"
%   verbo_oral_7                 ka’i — grammar: "Verbo Oral"
%   verbo_nasal_3                mokã — grammar: "Verbo Nasal"
%   verbo_nasal_4                ohẽ — grammar: "Verbo Nasal"
%   verbo_oral_8                 po’i — grammar: "Verbo Oral"
%   verbo_nasal_5                ñe’ẽngatu — grammar: "Verbo Nasal"
%   suu_type                     suʼu
%   apo_type                     apo
%   echa_type                    echa
%   sapukai_type                 sapukái
%   ti_type                      tĩ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
