% rules/izh/nouns.lp
% Ingrian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389138: Ižoran keel (Ittseopastaja) / Ижорский язык (Самоучитель) (n.d.), pages 14, 28, 32, 34, 42, 44, 54, 62, 64, 70, 86
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   xxi_painutoz                 ilinee — grammar: "XXI painutoz"
%   xvi_painutoz                 kannel — grammar: "XVI painutoz"
%   xi_painutoz                  käzi — grammar: "XI painutoz"
%   viii_painutoz                köhä — grammar: "VIII painutoz"
%   x_painutoz                   leem — grammar: "X painutoz"
%   x_painutoz_2                 lumi — grammar: "X painutoz"
%   i_painutoz_i                 maa — grammar: "I painutoz. I склонение."
%   viii_painutoz_2              opastaja — grammar: "VIII painutoz"
%   viii_painutoz_3              orava — grammar: "VIII painutoz"
%   xi_painutoz_2                orz — grammar: "XI painutoz"
%   xvi_painutoz_2               pere — grammar: "XVI painutoz"
%   i_painutoz_i_2               pii — grammar: "I painutoz. I склонение."
%   xv_painutoz                  päre — grammar: "XV painutoz"
%   xxi_painutoz_2               ranneke — grammar: "XXI painutoz"
%   xvi_painutoz_3               seemen — grammar: "XVI painutoz"
%   xv_painutoz_2                sie — grammar: "XV painutoz"
%   i_painutoz_i_3               soo — grammar: "I painutoz. I склонение."
%   xvi_painutoz_4               säivär — grammar: "XVI painutoz"
%   xi_painutoz_3                uuz — grammar: "XI painutoz"
%   i_painutoz_i_4               voi — grammar: "I painutoz. I склонение."
%   x_painutoz_3                 uksi — grammar: "X painutoz"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
