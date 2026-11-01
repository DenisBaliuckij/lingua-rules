% rules/sje/adjectives.lp
% Pite Saami adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 207: A grammar of Pite Saami (2014), pages 109, 117, 118, 119, 120, 122, 130, 134, 139, 148, 152, 170, 181, 188, 191, 193, 194
%   doc 388175: A corpus-based grammar of spoken Pite Saami (2013), pages 116, 122, 123, 126, 129, 130, 138, 139, 142, 147, 156, 160, 187, 192, 194, 198, 200, 303
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   iii                          luvas, garras — grammar: "iii"
%   iii_2                        nanos — grammar: "iii"
%   iv                           vuoras, bivval — grammar: "iv"
%   ii                           fávvro — grammar: "ii"
%   iv_2                         galmas — grammar: "iv"
%   i                            guhke — grammar: "i"
%   ii_2                         gårå, vasste — grammar: "ii"
%   iv_3                         njuallgat — grammar: "iv"
%   i_2                          nävvre — grammar: "i"
%   ii_3                         tjábbe — grammar: "ii"
%   iv_4                         tjáhpat — grammar: "iv"
%   i_3                          ådne — grammar: "i"
%   v                            bivvalis — grammar: "v"
%   v_2                          buoragis — grammar: "v"
%   ii_4                         buosjes — grammar: "ii"
%   iii_3                        dájges — grammar: "iii"
%   ii_5                         fávros — grammar: "ii"
%   vii                          galbma — grammar: "vii"
%   iii_4                        gujos — grammar: "iii"
%   vii_2                        jallga — grammar: "vii"
%   vii_3                        lägga — grammar: "vii"
%   ii_6                         nievres — grammar: "ii"
%   vii_4                        njuallga — grammar: "vii"
%   i_4                          rusjgis — grammar: "i"
%   iv_5                         sádnes — grammar: "iv"
%   ii_7                         vastes — grammar: "ii"
%   iii_5                        åvros — grammar: "iii"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
