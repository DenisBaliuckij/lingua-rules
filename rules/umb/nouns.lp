% rules/umb/nouns.lp
% Umbundu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7988: Grammatica do Umbundu ou lingua de Benguella (1894), pages 33, 34, 76, 80, 87
%   doc 844270: Umbundu Grammar (Part II: Quimbundo Morphology and Principles of Syntax) (n.d.), pages 26, 28, 31, 32, 35, 37, 42, 62, 67, 69, 73, 76
%   doc 844276: Gramática do Umbundo: Morfologia e princípios de sintaxe (n.d.), pages 22, 23, 26, 31, 32, 33
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   terceira_classe_primeira_sub_classe e-hondio — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_2 e-kaka — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_3 e-kala — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_4 e-kamba — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_5 e-kandu — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_6 e-kapa — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_7 e-kepa — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_8 e-laka — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_primeira_sub_classe_9 e-longa — grammar: "Terceira classe, Primeira sub-classe"
%   terceira_classe_segunda_sub_classe i-ko — grammar: "Terceira classe, Segunda sub-classe"
%   terceira_classe_segunda_sub_classe_2 i-nakulu — grammar: "Terceira classe, Segunda sub-classe"
%   terceira_classe_segunda_sub_classe_3 i-nanu — grammar: "Terceira classe, Segunda sub-classe"
%   terceira_classe_segunda_sub_classe_4 i-su — grammar: "Terceira classe, Segunda sub-classe"
%   quarta_classe                ochi-bemba — grammar: "Quarta classe"
%   quarta_classe_2              ochi-fuko — grammar: "Quarta classe"
%   quarta_classe_3              ochi-kepa — grammar: "Quarta classe"
%   quarta_classe_4              ochi-kuto — grammar: "Quarta classe"
%   quarta_classe_5              ochi-landa — grammar: "Quarta classe"
%   quarta_classe_6              ochi-lombo — grammar: "Quarta classe"
%   quarta_classe_7              ochi-mbulu — grammar: "Quarta classe"
%   quarta_classe_8              ochi-mbundu — grammar: "Quarta classe"
%   quarta_classe_9              ochi-na — grammar: "Quarta classe"
%   quarta_classe_10             ochi-ndele — grammar: "Quarta classe"
%   quarta_classe_11             ochi-pa — grammar: "Quarta classe"
%   quarta_classe_12             ochi-tungu — grammar: "Quarta classe"
% Irregular (listed in data/nouns.exceptions.tsv): e-iu, e-ka, e-na, e-nha, e-nlio, e-pia, e-sa, e-tcke, e-tui, e-ue, e-ugu, i-mbo ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
