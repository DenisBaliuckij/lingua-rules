% rules/mus/adjectives.lp
% Creek (Muscogee) adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388801: Учебник крикского языка (2003), pages 51, 52, 58
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   afvcke_type                  afvckē
%   afvnke_type                  afvnkē
%   cate_type                    catē
%   cvpke_type                   cvpkē
%   fvcke_type                   fvckē
%   hvsvtke_type                 hvsvtkē
%   hvtke_type                   hvtkē
%   lane_type                    lanē
%   lvste_type                   lvstē
%   lowvcke_type                 lŏwvckē
%   tvnke_type                   tvnkē
%   vcule_type                   vculē
% Irregular (listed in data/adjectives.exceptions.tsv): cutkē, elē
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
