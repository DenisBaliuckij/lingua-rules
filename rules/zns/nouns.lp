% rules/zns/nouns.lp
% Mansi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389031: Vogul (2001), pages 13, 14, 17, 18, 21, 22, 23, 24, 25, 26
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   tumpat_type                  tumpat, xspat
%   xaryat_type                  xaryat
%   syi_type                     Syi
%   mojt_type                    mojt
%   ne_type                      ne
%   para_type                    para
%   xariy_type                   xariy
%   xsp_type                     xsp
%   ani_type                     Ani
%   llwit_type                   llwit
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
