% rules/kld/verbs.lp
% Gamilaraay verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289414: Yaluu: A Recovery Grammar of Yuwaalaraay and Gamilaraay: A description of two New South Wa (2017), pages 58, 112, 159, 160, 162, 173, 247, 252, 283, 296
%   doc 289415: A grammar of Yuwaalaraay (1980), pages 46, 58, 74
%   doc 289416: A grammar of Yuwaalaraay and Gamilaraay: a description of two New South Wales languages ba (2014), pages 62, 65, 131, 170, 171, 286
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dha_li_type                  dha-li
%   ng_class                     gaa-gi — grammar: "NG class"
%   rr_class                     wuu-rri — grammar: "RR class"
%   y_class                      yana-y — grammar: "Y class"
%   r_class_verbs                dur, wu:r — grammar: "r class verbs"
%   r_class_verbs_2              šilayr — grammar: "r class verbs"
%   buma_type                    buma
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
