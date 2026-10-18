% rules/pqm/verbs.lp
% Passamaquoddy-Maliseet verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389734: Passamaquoddy-Maliseet (1996), pages 8, 17, 19, 23, 25
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ai_stem                      op — grammar: "ai stem"
%   ta_stem                      liph — grammar: "ta stem"
%   ti_stem                      lipt — grammar: "ti stem"
%   ta_stem_2                    oliph — grammar: "ta- stem"
%   ii_stem                      ol — grammar: "ii- stem"
%   ti_stem_2                    olipt — grammar: "ti- stem"
%   ii_stem_2                    ot — grammar: "ii stem"
%   tihfniya_type                tihfniya
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
