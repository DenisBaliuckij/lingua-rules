% rules/mkf/nouns.lp
% Miya nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 52866: A Grammar of Miya (1998), pages 73, 77, 80, 106, 108, 109, 114, 135, 137, 168
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   feminine_construction        agam — grammar: "feminine construction"
%   masculine_construction       akyar — grammar: "masculine construction"
%   feminine_construction_2      angar — grammar: "feminine construction"
%   feminine_construction_3      mbaag — grammar: "feminine construction"
%   masculine_construction_2     atin — grammar: "masculine construction"
%   masculine_construction_3     poram — grammar: "masculine construction"
%   mly_type                     mly
%   k_m_type                     k"m
%   kay_type                     kay
%   klirrna_type                 klirrna
%   maron_type                   maron
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
