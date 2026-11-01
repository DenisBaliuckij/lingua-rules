% rules/kas/verbs.lp
% Kashmiri verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389792: Kashmiri: A Cognitive-Descriptive Grammar (1996), pages 226, 227, 228, 229, 245, 246, 247, 276, 347, 354, 355, 356, 357, 358, 359, 360, 361, 362, 368, 369, 370, 376
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ni_type                      ni
%   par_type                     par
%   group_one_intransitives      yun — grammar: "Group one intransitives"
%   group_two_intransitives      pak — grammar: "Group two intransitives"
%   group_one_intransitives_2    pe, ce, khe — grammar: "Group one intransitives"
%   vuch_type                    vuch
%   an_type                      an
%   group_two_ergative_impersonal_intransiti as — grammar: "Group two ergative/impersonal intransitives"
%   beh_type                     beh
%   bo_j_type                    bo(j
%   group_two_intransitives_2    hek — grammar: "Group two intransitives"
%   group_one_intransitives_3    khu:l — grammar: "Group one intransitives"
%   phu_type                     phu
%   group_two_intransitives_3    phut — grammar: "Group two intransitives"
%   pi_type                      pi
%   group_two_intransitives_4    tag — grammar: "Group two intransitives"
%   group_two_intransitives_5    tra:v — grammar: "Group two intransitives"
%   group_two_ergative_impersonal_intransiti_2 vad — grammar: "Group two ergative/impersonal intransitives"
%   group_two_exceptional_intransitives vas — grammar: "Group two exceptional intransitives"
%   group_one_intransitives_4    wri, wzi — grammar: "Group one intransitives"
%   group_one_intransitives_5    yir — grammar: "Group one intransitives"
%   kar_type                     kar
%   group_two_exceptional_intransitives_2 khas — grammar: "Group two exceptional intransitives"
%   le_kh_type                   le:kh
%   chal_type                    chal
%   group_two_intransitives_6    gatsh — grammar: "Group two intransitives"
%   vush_type                    vush
% Irregular (listed in data/verbs.exceptions.tsv): atsun, di, he, ne:r, yi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
