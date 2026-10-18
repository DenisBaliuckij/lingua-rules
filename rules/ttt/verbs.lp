% rules/ttt/verbs.lp
% Tat (North Azerbaijani) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78625: Язык североазербайджанских татов (1963), pages 21, 58, 59, 61
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   nistim_type                  nistim — grammar: "Глагол-связка (отрицательная форма)"
%   ut_type                      ut — grammar: "Глагол-связка (краткая форма)"
%   kistim_type                  kistim — grammar: "Глагол-связка (вопросительная форма)"
%   vakardxn_type                vakardxn
%   vxgyften_type                vxgyften
%   bxrim_type                   bxrim
%   dxbyrzundxn_type             dxbyrzundxn
%   kuftxn_type                  kuftxn
%   vxlxsim_type                 vxlxsim
%   xngxnim_type                 xngxnim
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
