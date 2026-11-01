% rules/ron/nouns.lp
% Romanian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 23134: Romanian Grammar (2003), pages 35, 50, 51, 58, 60, 62, 77, 78, 84, 97, 100, 107, 108, 133, 134, 135, 137, 138, 139, 143, 145, 147, 154, 158
%   doc 54045: Bun venit în România! Manual de limbă română şi de orientare culturală pentru străini (2008), pages 103, 138, 173
%   doc 108439: Grammaire du roumain moderne, à l'usage des français et des étrangers (1877), pages 20, 21, 22, 23, 24, 25, 26, 27, 28, 33, 35, 36, 37, 38, 41, 43, 44, 45
%   doc 650782: Manual de limba Română pentru adulții Beneficiari de Protecție Internațională în România ș (2017), pages 77, 78, 129
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   substantifs_heterogenes      scaun — grammar: "substantifs hétérogènes"
%   cafea_type                   cafea
%   casa_type                    casă
%   flora_type                   floră
%   pom_type                     pom
%   substantifs_feminins_en_a    grădină — grammar: "SUBSTANTIFS FÉMININS EN A"
%   substantifs_masculins_en_e   părinte-le — grammar: "SUBSTANTIFS MASCULINS EN E."
%   substantifs_feminins_en_a_dont_le_plurie dómn'a — grammar: "SUBSTANTIFS FÉMININS EN A DONT LE PLURIEL EST EN E."
%   substantifs_feminin_en_e     vulpe-a — grammar: "SUBSTANTIFS FÉMININ. EN E."
%   substantifs_propres          Apenini — grammar: "substantifs propres"
%   substantifs_propres_2        Lucrecia — grammar: "substantifs propres"
%   substantifs_feminins_en_ea   stea-ua — grammar: "SUBSTANTIFS FÉMININS EN EA ."
% Irregular (listed in data/nouns.exceptions.tsv): loc
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
