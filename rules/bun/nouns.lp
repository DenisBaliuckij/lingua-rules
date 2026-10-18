% rules/bun/nouns.lp
% Sherbro nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 433: A grammar of Sherbro (2025), pages 84, 150, 151, 153
%   doc 2545: The Phonology and Morphology of Sherbro (1967), pages 86, 87, 95, 102
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   yu_type                      yu
%   si_class                     bɔkɛ — grammar: "Si class"
%   w_class                      bɛl — grammar: "wɔ class"
%   w_class_2                    chanth — grammar: "wɔ class"
%   w_class_3                    dip — grammar: "wɔ class"
%   si_class_2                   gbɛgbɛ — grammar: "Si class"
%   w_class_4                    koluŋ — grammar: "wɔ class"
%   si_class_3                   nɔŋgbɛ — grammar: "Si class"
%   si_class_4                   pio — grammar: "Si class"
%   ral_type                     ral
%   w_class_5                    samak — grammar: "wɔ class"
%   w_class_6                    sampa — grammar: "wɔ class"
%   si_class_5                   thumɔɛ — grammar: "Si class"
%   si_class_6                   thɛthɛl — grammar: "Si class"
%   w_class_7                    to — grammar: "wɔ class"
%   w_class_8                    tun — grammar: "wɔ class"
%   si_class_7                   vee — grammar: "Si class"
% Irregular (listed in data/nouns.exceptions.tsv): bɛknɔ, la, potonɔ, wonɔ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
