% rules/sin/nouns.lp
% Sinhala nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 104527: A Comprehensive Grammar of the Sinhalese Language (1972), pages 114, 115, 116, 117, 140, 147, 149, 154, 194, 197, 310, 312, 317, 604, 607, 608, 609, 610, 611, 613, 615, 616, 621, 631
%   doc 388197: Sinhala (2014), pages 62, 88, 92, 93, 94, 96, 97, 302
%   doc 896604: Sinhala: Basic Course. Module 2: General Conversation. (1979), pages 139
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   masculine_nouns              කුකුල් — grammar: "Masculine Nouns"
%   masculine_nouns_2            මුහන්දිරම් — grammar: "Masculine Nouns"
%   class_type                   දූ
%   feminine_nouns_bases_ending_in_vowels අඟන — grammar: "Feminine nouns (bases ending in vowels)"
%   class_type_2                 අම්මා
%   class_type_3                 නන්
%   class_type_4                 බිරිදු
%   class_type_5                 මහි
%   class_type_6                 මාතා
%   class_type_7                 මී
%   class_type_8                 යහළු
%   feminine_nouns_bases_ending_in_vowels_2 ලඳ — grammar: "Feminine nouns (bases ending in vowels)"
%   animate                      wac:fuwa — grammar: "Animate"
%   inanimate                    pu(Uwa — grammar: "Inanimate"
%   animate_mas                  daru — grammar: "Animate (mas.)"
%   animate_fern                 den — grammar: "Animate (fern.)"
%   inanimate_2                  dora — grammar: "Inanimate"
%   animate_fern_2               duu — grammar: "Animate (fern.)"
%   animate_fern_3               gaaikaa — grammar: "Animate (fern.)"
%   inanimate_3                  gas — grammar: "Inanimate"
%   animate_mas_2                gowi — grammar: "Animate (mas.)"
%   animate_mas_3                hora — grammar: "Animate (mas.)"
%   inanimate_4                  kala — grammar: "Inanimate"
%   animate_fern_4               keli — grammar: "Animate (fern.)"
%   inanimate_5                  koqi — grammar: "Inanimate"
%   animate_mas_4                nari — grammar: "Animate (mas.)"
%   animate_fern_5               nili — grammar: "Animate (fern.)"
%   inanimate_6                  paara — grammar: "Inanimate"
%   inanimate_7                  puf.u — grammar: "Inanimate"
%   animate_mas_5                raalahaami — grammar: "Animate (mas.)"
%   animate_mas_6                wa — grammar: "Animate (mas.)"
%   class_type_9                 අක්කා
%   class_type_10                අඩු
%   class_type_11                අප්පා
%   feminine_nouns               අඹුව — grammar: "Feminine Nouns"
%   masculine_nouns_3            අශ්ව — grammar: "Masculine Nouns"
%   masculine_nouns_4            ඇත් — grammar: "Masculine Nouns"
%   class_type_12                ඇඳ
%   masculine_nouns_5            ඇමති — grammar: "Masculine Nouns"
%   masculine_nouns_6            ඉඳු — grammar: "Masculine Nouns"
%   masculine_nouns_7            උරු — grammar: "Masculine Nouns"
%   class_type_13                කථා
%   masculine_nouns_8            කරණු — grammar: "Masculine Nouns"
%   class_type_14                කල
%   class_type_15                ක්
%   masculine_nouns_9            කාක් — grammar: "Masculine Nouns"
%   class_type_16                කෙල
%   feminine_nouns_2             කෙල්ල — grammar: "Feminine Nouns"
%   class_type_17                ගස්
%   masculine_nouns_10           ගුරු — grammar: "Masculine Nouns"
%   masculine_nouns_11           ගෙබි — grammar: "Masculine Nouns"
%   masculine_nouns_12           ගෝණුසු — grammar: "Masculine Nouns"
%   class_type_18                දු
%   feminine_nouns_3             දෙන් — grammar: "Feminine Nouns"
%   class_type_19                දෙවි
%   class_type_20                දේ
%   masculine_nouns_13           නටනු — grammar: "Masculine Nouns"
%   class_type_21                නරි
%   masculine_nouns_14           නැටු — grammar: "Masculine Nouns"
%   class_type_22                නැඳි
%   masculine_nouns_15           පකෂි — grammar: "Masculine Nouns"
%   class_type_23                පාර
%   masculine_nouns_16           පිය — grammar: "Masculine Nouns"
%   class_type_24                පිහියා
%   class_type_25                පුත්
%   masculine_nouns_17           පුත්‍ර — grammar: "Masculine Nouns"
%   masculine_nouns_18           බළල් — grammar: "Masculine Nouns"
%   class_type_26                බැන
%   feminine_nouns_4             බිරිඳු — grammar: "Feminine Nouns"
%   feminine_nouns_5             බිසෝ — grammar: "Feminine Nouns"
%   masculine_nouns_19           බේබදු — grammar: "Masculine Nouns"
%   class_type_27                භාෂා
%   class_type_28                මල්
%   masculine_nouns_20           මහත් — grammar: "Masculine Nouns"
%   masculine_nouns_21           මහලු — grammar: "Masculine Nouns"
%   class_type_29                මාමා
%   masculine_nouns_22           මිතුරු — grammar: "Masculine Nouns"
%   masculine_nouns_23           මිනිස් — grammar: "Masculine Nouns"
%   masculine_nouns_24           මුතු — grammar: "Masculine Nouns"
%   class_type_30                රජ
%   masculine_nouns_25           ලියන — grammar: "Masculine Nouns"
%   masculine_nouns_26           ලේකම් — grammar: "Masculine Nouns"
%   class_type_31                වැසි
%   masculine_nouns_27           වෙළෙඳ — grammar: "Masculine Nouns"
%   class_type_32                වෛද
%   masculine_nouns_28           සහෝදර — grammar: "Masculine Nouns"
%   feminine_nouns_6             ස්ත්‍රී — grammar: "Feminine Nouns"
%   feminine_nouns_7             සූ — grammar: "Feminine Nouns"
%   masculine_nouns_29           සෘෂි — grammar: "Masculine Nouns"
%   class_type_33                හරක්
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
