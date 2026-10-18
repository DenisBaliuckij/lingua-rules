% rules/nir/verbs.lp
% Nimboran verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 26093: The Nimboran Language: Phonology and Morphology (1965), pages 202, 210, 212, 220, 222, 224, 225, 228, 234, 236, 237, 238, 240, 242, 244, 246, 250, 253, 259, 260, 261
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   masculine_object_momentary   geduore — grammar: "MASCULINE OBJECT - MOMENTARY"
%   geduorekenery_type           geduorekenéry
%   geduorebenaru_type           geduorebenáru, geduoresenáru
%   plural_object_iterative      gedóudebekántu, gedóudebekátu — grammar: "PLURAL OBJECT - ITERATIVE"
%   plural_object_iterative_2    gedóudenelJgéty — grammar: "PLURAL OBJECT - ITERATIVE"
%   geduoresenery_type           geduoresenéry
%   plural_object_iterative_3    gedóudeskántu — grammar: "PLURAL OBJECT - ITERATIVE"
%   unspecified_object_iterative geduobekátu — grammar: "UNSPECIFIED OBJECT - ITERATIVE"
%   unspecified_object_iterative_2 geduoskéty — grammar: "UNSPECIFIED OBJECT - ITERATIVE"
%   gedoudenety_type             gedóudenety
%   unspecified_object_iterative_3 geduoskátu — grammar: "UNSPECIFIED OBJECT - ITERATIVE"
%   gedoudekatu_type             gedóudekátu
%   gedoutemskeky_type           gedóutemskéky
%   gedoudesepy_type             gedóudesepy
%   gedoutembekeky_type          gedóutembekéky
%   ljgeduoskatu_type            lJgeduoskátu
%   gedoudebantu_type            gedóudebántu
%   gedoudesantu_type            gedóudesántu
%   masculine_object_iterative   geduoreskátu, geduorebekátu — grammar: "MASCULINE OBJECT - ITERATIVE"
%   masculine_object_iterative_2 geduoreskéty — grammar: "MASCULINE OBJECT - ITERATIVE"
%   gedoudebeku_type             gedóudebeku
%   gedoudebepu_type             gedóudebepu
%   gedoudenaku_type             gedóudenáku
%   gedoudeseky_type             gedóudeseky
%   gedoudesepu_type             gedóudesepu
%   second_secondary_verb_category gedóurenner — grammar: "SECOND SECONDARY VERB CATEGORY"
%   gedoutemskepy_type           gedóutemsképy
%   gedoudekenty_type            gedóudekenty
%   second_secondary_verb_category_2 gedóureber — grammar: "SECOND SECONDARY VERB CATEGORY"
%   second_secondary_verb_category_3 gedóureser — grammar: "SECOND SECONDARY VERB CATEGORY"
%   gedoutemnct_geky_type        gedóutemnCT)géky
%   dukative_momentary           gedóutemty — grammar: "Dukative - Momentary"
%   geduorebenaku_type           geduorebenáku
%   masculine_object_momentary_2 geduorenáru — grammar: "MASCULINE OBJECT - MOMENTARY"
%   gedoudeseku_type             gedóudeseku
%   plural_object_iterative_4    gedóudeskéty — grammar: "PLURAL OBJECT - ITERATIVE"
%   gedoutembekepy_type          gedóutembeképy
%   durative_iterative           gedóutemkéty — grammar: "Durative - Iterative"
%   geduobaru_type               geduobáru
%   geduodu_type                 geduodu
%   plural_object_iterative_5    gedóudeskátu — grammar: "PLURAL OBJECT - ITERATIVE"
%   dukative_momentary_2         gedóutembéy — grammar: "Dukative - Momentary"
% Irregular (listed in data/verbs.exceptions.tsv): geduo lJáru
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
