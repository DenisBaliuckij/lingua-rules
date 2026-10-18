% rules/zun/verbs.lp
% Zuni verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 24631: Zuni Language Learning Manual (1974), pages 57, 60, 62, 63, 70, 71
%   doc 389084: Zuni Grammar (1965), pages 60
%   doc 389085: Zuni (1934), pages 84, 87, 89, 90, 93, 98, 102, 113
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   transitive_verbs_class_ii    ito — grammar: "Transitive Verbs, Class II"
%   transitive_verbs_class_i     elate — grammar: "Transitive Verbs, Class I"
%   p_iya_type                   p^iya
%   intransitive_verbs_class_vii la^a — grammar: "Intransitive Verbs, Class VII"
%   lat_type                     lat
%   tok_type                     tok^
%   class_vii                    aha — grammar: "Class VII"
%   ayyala_type                  ayyala
%   iyotf_type                   iyoTf
%   p_ote_a_type                 p^ote^a
%   p_otena_we_type              p^otena-we
%   p_iyana_type                 p^iyana
%   ayyu_ya_w_type               ayyu'ya:w
% Irregular (listed in data/verbs.exceptions.tsv): ahha, ala, iuwa, utsfi, yak
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
