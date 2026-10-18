% rules/lit/verbs.lp
% Lithuanian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389186: A Short Grammar of Lithuanian (1996), pages 40, 42, 43, 44, 45, 46, 47, 48, 59, 60, 62, 66, 73, 101, 107, 108, 112, 113, 130, 131, 140, 159
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   dirbti_type                  dirbti, pirkti, skaityti
%   mesti_type                   mesti
%   vesti_type                   vesti
%   matytis_type                 matytis
%   megzti_type                  megzti, nešti
%   ii_conjugation               mylėti — grammar: "II conjugation"
%   susitikti_type               susitikti
%   turi_ti_type                 turi!ti
%   bjurti_type                  bjurti
%   degti_type                   degti
%   kepti_type                   kepti, nesti, vezti
%   rimti_type                   rimti
%   sekti_type                   sekti
%   sklysti_type                 sklysti
%   skrlsti_type                 skrlsti
%   zutt_type                    zutt
%   balti_type                   balti
%   birti_type                   birti
%   bristi_type                  bristi
%   griauti_type                 griauti
%   gverti_type                  gverti
%   kilti_type                   kilti
%   lyti_type                    lyti
%   pjauti_type                  pjauti
%   plauti_type                  plauti
%   rauti_type                   rauti
%   ryti_type                    ryti
%   salti_type                   salti
%   sauti_type                   sauti
%   silti_type                   silti
%   svirti_type                  svirti
%   virti_type                   virti
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
