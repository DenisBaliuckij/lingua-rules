% rules/aac/verbs.lp
% Ari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 37757: A descriptive grammar of Bəṭaḥrēt (Baṭḥari) (2025), pages 152, 153, 155, 215, 216, 218, 220, 222, 223, 231, 232, 233, 234, 245, 247, 248
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   h3_stem                      egēfən — grammar: "Ȟ3-Stem"
%   h2_stem                      egōləd — grammar: "Ȟ2-Stem"
%   qn_stem                      enḏəbḏōb — grammar: "QN-stem"
%   qs_stem                      šəderbəš — grammar: "QŠ-stem"
%   gb_stem                      kēfi — grammar: "Gb stem"
%   s2_stem                      šəgēləs — grammar: "Š2-Stem"
%   s1_stem                      šəndōm — grammar: "Š1-Stem"
% Irregular (listed in data/verbs.exceptions.tsv): anāḳaʕ yanāḳʕan yanāḳaʕ, bənō yəbēn, eftəšōr yəftšērən yəftəšōr, enḥidōb yənḥēdōb yənḥēdəb, ferśōg yəfərśōg yəferśəg, hēmaʕ yəhēmaʕ yəhmaʕ, karbəl yəkərbōl yəkarbəl, lātbəd yəltəbōd yəltebəd, śēni, ʕatšōš yəʕatšēšən yəʕatšōš
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
