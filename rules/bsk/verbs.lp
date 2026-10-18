% rules/bsk/verbs.lp
% Burushaski verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7345: Srinagar Burushaski: A Descriptive and Comparative Account with Analyzed Texts (2019), pages 163, 164, 168, 177, 180, 181, 182, 183, 184
%   doc 7347: The Burushaski Language: Volume I Introduction and Grammar (1935), pages 191, 308, 319, 324, 333, 495
%   doc 103892: A Reference Grammar of Eastern Burushaski (2012), pages 148, 156, 159, 160, 162, 164, 171, 179
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   girmin_type                  girmín
%   human_np                     be — grammar: "[+Human] NP"
%   ba_type                      ba
%   se_type                      šé
%   forms_o_f_verbs_in_etyas     di.e.yas — grammar: "Forms o f verbs in -ETYAS"
%   ni_type                      ní
%   ju_type                      jú
%   man_type                     man
%   mani_type                    maní
%   gudelja_type                 gudelja
%   mane_type                    mané
%   midelja_type                 midelja
% Irregular (listed in data/verbs.exceptions.tsv): i e
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
