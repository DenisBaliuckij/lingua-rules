% rules/glv/nouns.lp
% Manx nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389500: A Practical Grammar of the Antient Gaelic, Usually Called Manx (1870), pages 66, 68, 70, 71
%   doc 389501: Manx (2010), pages 21, 22, 23, 24, 31, 32, 33, 34
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   fifth_declension             Blein — grammar: "FIFTH DECLENSION"
%   feminine                     Greg — grammar: "feminine"
%   feminine_2                   Kiark — grammar: "feminine"
%   fifth_declension_2           Per — grammar: "FIFTH DECLENSION"
%   masculine_gender             baase — grammar: "Masculine Gender"
%   braar_type                   braar
%   moir_type                    moir
%   shuyr_type                   shuyr
%   masculine_gender_2           thie — grammar: "Masculine Gender"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
