% rules/myv/verbs.lp
% Erzya (Serkali dialect) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15538: An Introductory Course of the Erzya Language (2014), pages 19, 26, 29, 39, 40, 46, 47, 51, 52, 53, 58, 60, 70, 76, 77
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ulems_type                   uĺems
%   lovno_ms_type                lovno-ms
%   mere_ms_type                 meŕe-ms
%   soda_ms_type                 soda-ms
%   tonavtne_ms_type             tonavtńe-ms
%   lovnoms_type                 lovnoms, ńejems
%   lovoms_type                  lovoms
%   imperative_mood_indefinite_conjugation morams — grammar: "Imperative Mood (Indefinite Conjugation)"
%   conditional_indefinite_conjugation jarsoms — grammar: "Conditional (indefinite conjugation)"
%   kortams_type                 kortams, sams
%   koso_type                    koso, veĺese
%   mazij_type                   mazij, stud́ent
%   tonavtnems_type              tonavtńems
%   tujems_type                  tujems
%   conditional_indefinite_conjugation_2 śimsoms — grammar: "Conditional (indefinite conjugation)"
%   imperative_mood_indefinite_conjugation_2 jarsams — grammar: "Imperative Mood (Indefinite Conjugation)"
%   imperative_mood_indefinite_conjugation_3 putoms — grammar: "Imperative Mood (Indefinite Conjugation)"
%   imperative_mood_indefinite_conjugation_4 sovams — grammar: "Imperative Mood (Indefinite Conjugation)"
%   imperative_mood_indefinite_conjugation_5 udoms — grammar: "Imperative Mood (Indefinite Conjugation)"
%   ucoms_type                   učoms
%   imperative_mood_indefinite_conjugation_6 vanoms — grammar: "Imperative Mood (Indefinite Conjugation)"
%   vetams_type                  vet́ams
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
