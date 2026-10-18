% rules/xub/verbs.lp
% Betta Kurumba verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388328: A Grammar of Betta Kurumba (2003), pages 39, 45, 46, 47, 48, 79, 154, 155, 156, 164, 178, 179, 318, 319
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   t_class                      ya:ri — grammar: "t-class"
%   strong_s_class               argu — grammar: "strong-s-class"
%   go_type                      go
%   kil_type                     kil
%   nili_type                    nili
%   yari_type                    yari
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
