% rules/ayo/nouns.lp
% Ayoreo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22565: Ayoreo (Zamuco). A grammatical sketch (2010), pages 17, 22, 24, 25
%   doc 22566: La flessione possessiva dell’ayoreo (2010), pages 8
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   gutade_type                  gutadé
%   jmini_type                   jmini
%   rani_type                    rani
%   gajnesori_type               gajnesôri
%   masculine_nouns              acadí — grammar: "masculine nouns"
%   masculine_nouns_2            ajepisi — grammar: "masculine nouns"
%   nasal_harmony_nominals_feminine angorone — grammar: "nasal harmony nominals (feminine)"
%   feminine_nominals            cheque — grammar: "feminine nominals"
%   masculine_nouns_3            choqui — grammar: "masculine nouns"
%   nasal_harmony_nominals_feminine_2 cojna — grammar: "nasal harmony nominals (feminine)"
%   masculine_nouns_4            cuchai — grammar: "masculine nouns"
%   nasal_harmony_nominals_masculine cutêri — grammar: "nasal harmony nominals (masculine)"
%   masculine_nouns_5            daye — grammar: "masculine nouns"
%   masculine_nouns_6            diri — grammar: "masculine nouns"
%   feminine_nominals_2          edo — grammar: "feminine nominals"
%   masculine_nouns_7            edogai — grammar: "masculine nouns"
%   masculine_nouns_8            edoi — grammar: "masculine nouns"
%   masculine_nouns_9            erui — grammar: "masculine nouns"
%   masculine_nouns_10           etabi — grammar: "masculine nouns"
%   gachisori_type               gachisôri
%   nasal_harmony_nominals_feminine_3 gajño — grammar: "nasal harmony nominals (feminine)"
%   feminine_nominals_3          gapua — grammar: "feminine nominals"
%   masculine_nouns_11           garai — grammar: "masculine nouns"
%   nasal_harmony_nominals_masculine_2 guiguijnai — grammar: "nasal harmony nominals (masculine)"
%   masculine_nouns_12           guipei — grammar: "masculine nouns"
%   masculine_nouns_13           isai — grammar: "masculine nouns"
%   nasal_harmony_nominals_masculine_3 jmanai — grammar: "nasal harmony nominals (masculine)"
%   nasal_harmony_nominals_masculine_4 jnani — grammar: "nasal harmony nominals (masculine)"
%   feminine_nominals_4          poca — grammar: "feminine nominals"
%   feminine_nominals_5          poría — grammar: "feminine nominals"
%   masculine_nouns_14           ugutadi — grammar: "masculine nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
