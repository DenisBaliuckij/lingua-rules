% rules/lik/verbs.lp
% Liko verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 48812: Liko phonology and grammar: a Bantu language of the Democratic Republic of the Congo (2015), pages 330, 331, 332, 333, 335, 414, 415, 416, 544, 548, 551, 554, 560, 566, 569, 570, 573, 576, 580, 584
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   pk_type                      pɩk
%   ik_type                      ik
%   past_specific_intransitive_atr_h_tone ngbʊ́t — grammar: "Past (specific), intransitive, [−ATR], H tone"
%   past_specific_intransitive_atr_h_tone_2 ɓín — grammar: "Past (specific), intransitive, [+ATR], H tone"
%   sil_type                     sil
%   pn_type                      pʊn
%   in_type                      ɓin
%   vi_type                      viʔ, kúmb
%   kt_type                      ɗɩkɩt
%   cvcvc_verbal_bases_anterior  yúkum — grammar: "CVCVC- verbal bases: Anterior"
%   future                       yǔkum — grammar: "Future"
%   ik_type_2                    ɗik
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
