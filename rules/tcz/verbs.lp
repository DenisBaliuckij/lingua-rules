% rules/tcz/verbs.lp
% Thado Chin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289406: A Slight Notice of the Grammar of the Thadou or New Kookie Language (1857), pages 3, 6, 7, 9, 10
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   miut_type                    miut
%   moong_type                   moong
%   shipit_type                  shipit
%   shipmin_type                 shipmin
%   ven_type                     ven
%   vet_type                     vet
%   theit_type                   theit
%   theiyin_type                 theiyin
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
