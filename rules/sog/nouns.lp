% rules/sog/nouns.lp
% Sogdian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389496: Sogdian (2007), pages 10, 11, 23
%   doc 389497: An Introduction to Manichean Sogdian (2007), pages 18, 19, 23, 24, 25, 29, 30, 35, 41, 48, 54, 59, 60
%   doc 897475: Essai de grammaire sogdienne: Deuxième partie, Morphologie, Syntaxe et Glossaire (1929), pages 131
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   consonant_declensions_heavy_stems mēѳ — grammar: "Consonant declensions. Heavy stems"
%   consonant_declensions_light_stems rəm — grammar: "Consonant declensions. Light stems"
%   consonant_declensions_light_stems_2 un — grammar: "Consonant declensions. Light stems"
%   light_stems                  ram — grammar: "light stems"
%   light_stems_2                wan — grammar: "light stems"
%   aka_and_iikii_stems          mart:Jxm-e — grammar: "aka- and iikii- stems"
%   heavy_stems                  meO — grammar: "heavy stems"
%   vocalic_declensions          murtē — grammar: "Vocalic declensions"
%   aka_and_iikii_stems_2        xana — grammar: "aka- and iikii- stems"
%   heavy_stems_2                zwan — grammar: "heavy stems"
%   light_stems_3                payn — grammar: "light stems"
%   vocalic_declensions_2        xānā — grammar: "Vocalic declensions"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
