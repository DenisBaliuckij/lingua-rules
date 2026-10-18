% rules/yua/verbs.lp
% Yucatec Maya verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22330: A Historical Grammar of the Maya Language of Yucatan 1557-2000 (2008), pages 78
%   doc 388639: A Grammar of the Yucatecan Mayan Language (1996), pages 22, 36, 37, 40, 41, 42, 43, 45, 91, 92, 94, 95, 96, 97, 99, 100, 102, 103, 121, 122, 123, 126, 129
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   passive_conjugation          han — grammar: "passive conjugation"
%   second_form                  hok — grammar: "second form"
%   fourth_form                  mek — grammar: "fourth form"
%   c_type                       c
%   ceel_type                    ceel, uiih, yan
%   fourth_form_2                cux — grammar: "fourth form"
%   biz_type                     biz, taz
%   ca_type                      cħa
%   naac_type                    naac
%   passive_conjugation_2        hay — grammar: "passive conjugation"
%   uinic_type                   uinic
%   accustomed_habitual          zuc — grammar: "accustomed habitual"
% Irregular (listed in data/verbs.exceptions.tsv): lik
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
