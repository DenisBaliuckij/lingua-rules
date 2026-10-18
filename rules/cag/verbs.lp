% rules/cag/verbs.lp
% Nivacle verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389254: Estudio gramatical de la lengua Nivacle (2014), pages 48, 66, 71, 74, 148
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   cfiy_iy_type                 cfiy-iy, cjon-jan
%   ftu_i_type                   ftu-i
%   ts_aclai_type                ts'aclai
%   ts_ai_type                   ts'ai
% Irregular (listed in data/verbs.exceptions.tsv): y-i+, y-ich
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
