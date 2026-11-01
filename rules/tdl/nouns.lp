% rules/tdl/nouns.lp
% Sur nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22715: A Grammar of Enxet Sur (2021), pages 149, 172, 231, 249, 250, 253, 470, 475, 487, 536, 570
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   non_related_nouns            amyep — grammar: "non-related nouns"
%   e_ak_ak                      apakhák — grammar: "//e’-ak//>-ák"
%   ek_ak_alternation            apaktog — grammar: "-ek/-ák alternation"
%   ek_ak_alternation_2          aplapnek — grammar: "-ek/-ák alternation"
%   apocope                      apmenek — grammar: "Apocope"
%   e_ak_ak_2                    appegkettek — grammar: "//e’-ak//>-ák"
%   apocope_2                    apqátek — grammar: "Apocope"
%   e_ak_ak_3                    aptaqla — grammar: "//e’-ak//>-ák"
%   e_ak_ak_4                    aptaxna — grammar: "//e’-ak//>-ák"
%   ek_ak_alternation_3          apxempenek — grammar: "-ek/-ák alternation"
%   e_ak_ak_5                    apáhak — grammar: "//e’-ak//>-ák"
%   non_related_nouns_2          kelán’a — grammar: "non-related nouns"
%   non_related_nouns_3          énxet — grammar: "non-related nouns"
% Irregular (listed in data/nouns.exceptions.tsv): a-táwa, apmek, apxagkok, eg-mók
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
