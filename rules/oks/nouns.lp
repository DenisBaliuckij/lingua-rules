% rules/oks/nouns.lp
% Oko nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296409: A Reference Grammar of Òko (2009), pages 74, 172, 175
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   atr_o_i_group                bO]@? — grammar: "+ATR o / i Group"
%   atr_o_e_group                gbe@]? — grammar: "+ATR o / e Group"
%   atr_o_e_group_2              jírì — grammar: "+ATR o / e Group"
%   atr_o_e_group_3              ròkòrò — grammar: "+ATR o / e Group"
%   atr_o_e_group_4              ró — grammar: "+ATR o / e Group"
%   atr_o_i_group_2              via — grammar: "+ATR o / i Group"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
