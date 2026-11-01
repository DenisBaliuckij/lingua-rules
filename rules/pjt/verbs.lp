% rules/pjt/verbs.lp
% Pitjantjatjara verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 40799: Categories, constituents and constituent order in Pitjantjatjara: An Aboriginal language o (1990), pages 24, 26, 30
%   doc 46042: The Western Desert code: An Australian cryptogrammar (2001), pages 60, 106, 134, 136, 138, 166
%   doc 793574: Alive and kicking: Areyonga Teenage Pitjantjatjara (2004), pages 78
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   tati_type                    tati
%   i_class_inchoative_verbs     watarku-ri-O — grammar: "(I)-class inchoative verbs"
%   ng_class_inchoative_verbs    ninti-ri-ng — grammar: "ng-class inchoative verbs"
%   pilunpa_type                 pilunpa
%   ukali_type                   ukali
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
