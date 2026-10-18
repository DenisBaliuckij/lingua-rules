% rules/kjq/verbs.lp
% Laguna Keres verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 91174: Acoma Grammar and Texts (1965), pages 142, 143, 145, 146
%   doc 388484: Grammar of Acoma Keresan (1967), pages 53, 91, 92
%   doc 388913: A Grammar of Laguna Keres (2006), pages 174
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   ze_type                      zé
%   ra_type                      řá
%   sla_type                     slá
%   uyuutha_type                 uyuUthA
%   slaaci_type                  sláaci
%   ukhacan_type                 ukhacAn
%   ci_type                      ci
%   ka_type                      ka
%   kacha_type                   kacha
%   ku_type                      ku
%   se_type                      sé
% Irregular (listed in data/verbs.exceptions.tsv): gáni
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
