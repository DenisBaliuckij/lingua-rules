% rules/lzl/verbs.lp
% Naman verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626249: Naman: a vanishing language of Malakula (Vanuatu) (2014), pages 79, 95, 96, 127, 128, 129, 130, 132
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ilung_type                   ilung
%   khan_type                    khan
%   khel_type                    khël
%   ve_type                      ve
%   var_type                     var
%   luolu_type                   luolu
%   utbu_type                    utbu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
