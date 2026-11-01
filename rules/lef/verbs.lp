% rules/lef/verbs.lp
% Lelemi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11325: A Grammar of Buem: The Lelemi Language (1973), pages 242, 323
%   doc 848643: A Grammar of Buem, the Lelemi Language (1973), pages 321
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dia_type                     dia
%   tina_type                    tina
%   adu_type                     adu, efwi
%   lemi_type                    lemi
%   dt_type                      dt
%   du_type                      du
%   fo_type                      fo
%   fwi_type                     fwi
%   ts_type                      ts
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
