% rules/amh/verbs.lp
% Amharic verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 652374: Colloquial Amharic: The Complete Course for Beginners (2025), pages 59, 70, 115, 140, 141, 142, 168, 216, 252, 285, 312, 313, 347, 425, 426, 427, 429
%   doc 854434: Aspects of the Amharic Verb in Comparison with Ethiopic (1949), pages 22, 24, 25, 26, 35
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_type                   ወሰድ
%   class_type_2                 አለ
%   naggara_type                 naggara
%   class_type_3                 ወሰደ
%   class_type_4                 አወቀ
%   c2_lit2_b                    ለየ — grammar: "2-lit2 B"
%   quadrilitteral_verb          lamallama — grammar: "quadrilitteral verb"
%   class_type_5                 ሰማ
%   c2_lit1_a                    ለካ — grammar: "2-lit1 A"
%   c2_lit2_a                    ሰጠ — grammar: "2-lit2 A"
%   c3_lit_b                     አደሰ — grammar: "3-lit B"
%   class_type_6                 ፈልግ
%   c2_li2_b                     አቈየ — grammar: "2-li2 B"
%   c2_lit1_a_2                  አበላ — grammar: "2-lit1 A"
%   c2_lit3                      አዳነ — grammar: "2-lit3"
%   c2_lit2_a_2                  አገኘ — grammar: "2-lit2 A"
%   c2_lit1_b                    አጠጣ — grammar: "2-lit1 B"
%   c2_lit4                      አጬሰ — grammar: "2-lit4"
%   c2_lit2_b_2                  ቀረ — grammar: "2-lit2 B"
%   c2_lit1_a_3                  በላ — grammar: "2-lit1 A"
%   class_type_7                 ነው
%   class_type_8                 ወደደ
%   c2_lit1_b_2                  ጠጣ — grammar: "2-lit1 B"
%   gerund                       gaddala — grammar: "Gerund"
%   c3_lit_b_2                   አበድር — grammar: "3-lit B"
%   c3_lit_a                     አድክም — grammar: "3-lit A"
%   class_type_9                 ወደዱ
%   finally_weak_verb_class_2    saraya — grammar: "Finally Weak verb Class 2"
%   class_type_10                አለች
%   class_type_11                አሉ
%   fallig_type                  fällïg
%   c2_lit5                      ኖረ — grammar: "2-lit5"
%   c2_lit5_2                    አቆመ — grammar: "2-lit5"
%   c3_lit_x                     ዘነጋ — grammar: "3-lit X"
%   c3_lit_y                     ጐበኘ — grammar: "3-lit Y"
% Irregular (listed in data/verbs.exceptions.tsv): መጣ mät’t’a, በል bäl, ተው täw, እንካ ïnka
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
