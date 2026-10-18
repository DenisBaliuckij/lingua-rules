% rules/ulk/verbs.lp
% Meryam Mir verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289578: A Sketch Grammar of Meryam Mir (1989), pages 80, 84, 93, 94
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   akmey_type                   akmey
%   bakyamu_type                 bakyamu
%   baraygi_type                 baraygi
%   demarge_type                 demarge
%   digwatmu_type                digwatmu
%   ekwey_type                   ekwey
%   epaytered_type               epaytered
%   esk_type                     esk
%   etaruk_type                  etaruk
%   etomeret_type                etomeret
%   ewsmer_type                  ewsmer
%   eydi_type                    eydi
%   imi_type                     imi
%   ismi_type                    ismi
%   itrum_type                   itrum
%   emri_type                    emri
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
