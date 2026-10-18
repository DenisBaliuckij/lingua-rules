% rules/eud/nouns.lp
% Eudeve nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289664: Grammatical Sketch of the Heve Language (1850), pages 23, 25, 26, 27, 46, 47, 53, 54, 66, 105
%   doc 849835: A grammatical sketch of the Heve language (1911), pages 17, 18, 20, 21
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   arit_type                    Arit
%   second_declension            Mavirot — grammar: "Second Declension"
%   nemitzan_type                Nemitzan
%   first_declension             Siibi — grammar: "First Declension"
%   nemutzan_type                Nemútzan
%   hiesguadauh_type             hiésguadauh
%   first_declension_2           Siibì — grammar: "First Declension"
%   third_declension             Utzvor — grammar: "Third Declension"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
