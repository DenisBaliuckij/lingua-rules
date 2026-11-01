% rules/pae/nouns.lp
% Pagibete nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296239: Pagibete, a Northern Bantu Borderlands Language: A Grammatical Sketch (n.d.), pages 39, 51
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   gender_1_2                   bozo — grammar: "gender 1/2"
%   gender_7_8                   digba-ke — grammar: "gender 7/8"
%   mama_type                    mama
%   gender_3_4                   mbelo — grammar: "gender 3/4"
%   nkala_type                   nkala
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
