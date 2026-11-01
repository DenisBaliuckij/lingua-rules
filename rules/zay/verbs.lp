% rules/zay/verbs.lp
% Zayse verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389866: Notes on the Zayse Language (1984), pages 38, 61, 65, 66, 89, 90, 91, 93, 94, 102, 132, 133, 135, 136
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   s5_verbs                     ?er-A — grammar: "S5 verbs"
%   s5_verbs_2                   ham-A — grammar: "S5 verbs"
%   sag_a_type                   sag-A
%   go_type                      go
%   s5_verbs_3                   bug-O — grammar: "S5 verbs"
%   a_class                      eat — grammar: "A class"
%   gel_a_type                   gel-A
%   a_class_2                    bring — grammar: "A class"
%   buge_type                    buge
%   c_ade_type                   c'ade
%   a_class_3                    come — grammar: "A class"
%   gaac_type                    gaac
%   hame_type                    hame
%   hear_type                    hear
%   yewe_type                    yewe
%   ylyye_type                   ylyye
%   c_type                       ?§.c
%   boor_a_type                  boor-A
%   bu_utt_type                  bu?-utt
%   mlye_type                    mlye
%   mokkor_a_type                mokkor-A
%   slye_type                    slye
%   c0_or_a_alternation_class    wod'-A — grammar: "0 or A alternation class"
%   yfsse_type                   yfsse
% Irregular (listed in data/verbs.exceptions.tsv): say, take
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
