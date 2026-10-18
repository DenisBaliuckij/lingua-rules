% rules/smo/verbs.lp
% Samoan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 896255: Grammar and vocabulary of the Samoan language, together with remarks on some of the points (1852), pages 18, 24, 25, 28, 30, 36
%   doc 897831: Samoan Language: A Manual for the Study and Teaching of the Samoan Language as Taught by P (1975), pages 123, 174, 184, 232, 355
%   doc 924563: Samoan For Missionaries (1983), pages 82, 87, 103, 326, 350, 375, 455
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ai_type                      ai
%   alato_type                   alato
%   alo_type                     alo
%   aloalo_type                  aloalo
%   alofo_type                   alofo
%   aoam_type                    aoam
%   faitau_type                  faitau
%   fatali_type                  fatali
%   fesili_type                  fesili
%   fesoasoani_type              fesoasoani
%   galue_type                   galue
%   moe_type                     moe
%   nofo_type                    nofo
%   tale_type                    tale
%   tali_type                    tali
%   talo_type                    talo
%   tatalo_type                  tatalo
%   tautala_type                 tautala
%   valaau_type                  valaau
% Irregular (listed in data/verbs.exceptions.tsv): sau, tatala
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
