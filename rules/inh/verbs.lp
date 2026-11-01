% rules/inh/verbs.lp
% Ingush verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 73567: Ingush Grammar (2011), pages 78, 79, 151, 155, 157, 158, 159, 160, 246, 260, 261, 263, 336, 767, 808, 809, 812, 814, 815, 816
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   mala_type                    mala
%   delimited_be                 xul — grammar: "Delimited 'be'"
%   d_oal_type                   d.oal
%   le_type                      le
%   d_ahw_type                   d.ahw
%   d_oagha_type                 d.oagha
%   d_oaqq_type                  d.oaqq
%   d_uoda_type                  d.uoda
%   class_iii                    laatt — grammar: "Class III"
%   class_x                      lat — grammar: "Class X"
%   class_xiv                    lie — grammar: "Class XIV"
%   class_xii                    lou — grammar: "Class XII"
%   class_ix                     mol — grammar: "Class IX"
%   class_xiii                   qeik — grammar: "Class XIII"
%   class_xvi                    quhw — grammar: "Class XVI"
%   class_viii                   say — grammar: "Class VIII"
%   class_vii                    sow — grammar: "Class VII"
%   ull_type                     ull
%   d_od_type                    d.od
%   d_oll_type                   d.oll, oll, qoll
%   d_ull_type                   d.ull
%   eqq_type                     eqq
%   hwed_type                    hwed
%   laattar_type                 lâattar
%   ott_type                     ott
%   qeikar_type                  qeikar
%   qoss_type                    qoss, toss
%   xou_type                     xou
%   motion_verbs                 d.eit — grammar: "Motion verbs"
%   class_i                      d.iesh — grammar: "Class I"
%   class_ii                     d.iett — grammar: "Class II"
%   motion_verbs_2               d.oala-d.u — grammar: "Motion verbs"
%   d_oall_type                  d.oall, loall
%   d_udzh_type                  d.udzh
%   motion_verbs_3               d.ug — grammar: "Motion verbs"
%   class_vi                     d.uuc — grammar: "Class VI"
%   hwo_type                     hwo
%   class_xi                     louz — grammar: "Class XI"
%   class_viii_2                 oal — grammar: "Class VIII"
%   class_iv                     tuox — grammar: "Class IV"
%   d_ieshar_type                d.îeshar
%   subordinating_converbs       männadalarie — grammar: "Subordinating converbs"
%   tull_type                    tull
% Irregular (listed in data/verbs.exceptions.tsv): be, bring, come, d.u, d.y, die, do, give, go, gu, lu, see ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
