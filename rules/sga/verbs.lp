% rules/sga/verbs.lp
% Old Irish verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 74744: Sengoidelc: Old Irish for Beginners (2006), pages 109, 110, 193, 194, 196, 207, 213, 281, 287, 303, 304, 306, 368, 397
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   wl                           caraid — grammar: "Wl"
%   w2                           suidiged — grammar: "W2"
%   s1                           do-tet — grammar: "S1"
%   beith_type                   beith
%   w2_2                         suidigfid — grammar: "W2"
%   taet_type                    taet
%   wl_deponent_s_preterite      labrasur — grammar: "Wl deponent s-preterite"
%   suidigidir_type              suidigidir
%   w2_deponent_s_preterite      suidigsiur — grammar: "W2 deponent s-preterite"
%   taibred_type                 taibred
%   s2                           acair — grammar: "S2"
%   sl                           beir — grammar: "Sl"
%   h2                           bf — grammar: "H2"
%   c53                          cluinethar — grammar: "53"
%   s3                           cren — grammar: "S3"
%   w2_3                         fodail — grammar: "W2"
%   s3_2                         freipen — grammar: "S3"
%   s2_2                         gaib — grammar: "S2"
%   w2_s_preterites              leicsiu — grammar: "W2 s-preterites"
%   h2_2                         biid — grammar: "H2"
%   wl_2                         labraid — grammar: "Wl"
%   w2_4                         leic — grammar: "W2"
%   h3                           comae — grammar: "H3"
%   c52                          mitte — grammar: "52"
%   h3_2                         suf — grammar: "H3"
%   sl_2                         berar — grammar: "Sl"
%   wl_3                         carthar — grammar: "Wl"
%   c52_2                        gaibther — grammar: "52"
%   w2_5                         leicther — grammar: "W2"
% Irregular (listed in data/verbs.exceptions.tsv): at, bia, emaid, ro-cluinethar
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
