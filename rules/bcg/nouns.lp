% rules/bcg/nouns.lp
% Temne nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296372: Temne phonology and morphology (1992), pages 66, 67, 68, 70, 72, 73, 74, 75, 76, 77, 78, 79, 190
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   class_7                      +la, ende — grammar: "Class 7"
%   class_2                      ^is — grammar: "Class 2"
%   class_4                      ali — grammar: "Class 4"
%   class_8                      aqt — grammar: "Class 8"
%   class_8_2                    aqt+r — grammar: "Class 8"
%   class_8_3                    aq£+s — grammar: "Class 8"
%   class_8_4                    aro — grammar: "Class 8"
%   class_8_plural               asa — grammar: "Class 8 (plural)"
%   class_8_5                    ber, lembre, rok+s, soy ... — grammar: "Class 8"
%   class_2_2                    bok, fAt, kuy, l+qs ... — grammar: "Class 2"
%   class_4_2                    dqt — grammar: "Class 4"
%   class_6                      eq — grammar: "Class 6"
%   class_6_2                    er — grammar: "Class 6"
%   class_4_3                    faq — grammar: "Class 4"
%   class_4_4                    folei], llm — grammar: "Class 4"
%   class_5a                     fon — grammar: "Class 5a"
%   class_2_3                    gbai^ — grammar: "Class 2"
%   class_2_4                    kup — grammar: "Class 2"
%   class_4_5                    lep — grammar: "Class 4"
%   class_8_6                    loq^ — grammar: "Class 8"
%   class_8_7                    maqko — grammar: "Class 8"
%   class_2_5                    mus — grammar: "Class 2"
%   class_7_2                    r+f — grammar: "Class 7"
%   class_8_8                    ran! — grammar: "Class 8"
%   class_8_9                    s^e — grammar: "Class 8"
%   class_4_6                    sam, muna — grammar: "Class 4"
%   class_5a_2                   sek — grammar: "Class 5a"
%   class_4_7                    t — grammar: "Class 4"
%   class_6_3                    uma — grammar: "Class 6"
%   class_3                      w-Ir — grammar: "Class 3"
%   class_3_2                    w-er — grammar: "Class 3"
%   class_4_8                    yek — grammar: "Class 4"
%   class_8_plural_2             ^qk+l — grammar: "Class 8 (plural)"
%   class_5b                     b+n^a — grammar: "Class 5b"
%   class_1                      bay — grammar: "Class 1"
%   class_1_2                    kabI — grammar: "Class 1"
%   class_1_3                    key — grammar: "Class 1"
%   class_4_9                    ta — grammar: "Class 4"
%   class_4_10                   tcila — grammar: "Class 4"
%   class_4_11                   yoka — grammar: "Class 4"
%   class_1_4                    £em — grammar: "Class 1"
%   class_4_12                   bap — grammar: "Class 4"
%   class_5b_2                   beqa — grammar: "Class 5b"
%   class_5a_3                   mes — grammar: "Class 5a"
%   class_4_13                   s+r) — grammar: "Class 4"
%   class_1_5                    temne — grammar: "Class 1"
% Irregular (listed in data/nouns.exceptions.tsv): want, wilni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
