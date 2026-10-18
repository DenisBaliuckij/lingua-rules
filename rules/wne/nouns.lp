% rules/wne/nouns.lp
% Pashto nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389680: Descriptive Grammar of Pashto and its Dialects (2014), pages 138, 144, 146, 149, 190, 253, 279, 280, 282, 283, 284, 285, 287, 288, 289, 291, 297, 299, 300
%   doc 389681: Pashto (1997), pages 8, 9, 10, 11, 18, 19, 24
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   m_lb                         kor — grammar: "M lb"
%   f2                           koran-� — grammar: "F2"
%   m_2a                         m — grammar: "M 2a"
%   mj                           mdmd — grammar: "MJ"
%   m_2b                         sar-� — grammar: "M 2b"
%   f3                           tankhii — grammar: "F3"
%   fi                           x — grammar: "FI"
%   m_ia                         shdgErd — grammar: "M ia"
% Irregular (listed in data/nouns.exceptions.tsv): Wl'ar, ghar, khol, lelVar, lur, mor, ngor, paxt-un, paxtyn, slVor, trol, zoy
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
