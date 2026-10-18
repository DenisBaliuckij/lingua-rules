% rules/sog/verbs.lp
% Sogdian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389496: Sogdian (2007), pages 10, 11, 23
%   doc 389497: An Introduction to Manichean Sogdian (2007), pages 18, 19, 23, 24, 25, 29, 30, 35, 41, 48, 54, 59, 60
%   doc 897475: Essai de grammaire sogdienne: Deuxième partie, Morphologie, Syntaxe et Glossaire (1929), pages 131
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   heavy_stems                  wēn — grammar: "Heavy stems"
%   light_stems                  βər — grammar: "Light stems"
%   intransitive_heavy_stem      es — grammar: "intransitive heavy stem"
%   ptiskwy_type                 pətīškwəy
%   light_stems_2                təγət — grammar: "Light stems"
%   heavy_stems_2                āžit, āγət — grammar: "Heavy stems"
%   heavy_stems_3                āγət-δārəm — grammar: "Heavy stems"
%   heavy_stems_4                əkt — grammar: "Heavy stems"
%   ktu_aru_type                 əktu-δāru
%   light_stems_3                əktu-δārəm — grammar: "Light stems"
%   heavy_stems_5                ѳāβər — grammar: "Heavy stems"
%   light_stems_4                βərā — grammar: "Light stems"
% Irregular (listed in data/verbs.exceptions.tsv): to be, to become, uβ, xā
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
