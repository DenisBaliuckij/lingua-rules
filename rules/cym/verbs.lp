% rules/cym/verbs.lp
% Welsh verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389200: A Welsh Grammar (1980), pages 17, 22, 24, 25, 26, 34, 36, 37, 38, 56, 88, 89, 96, 97, 98, 99, 100, 101, 109, 111, 112, 113, 114, 115, 116, 168
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   contracted_forms             mwynhaf — grammar: "contracted forms"
%   regular_verb                 canu — grammar: "regular verb"
%   contracted_forms_2           trof — grammar: "contracted forms"
%   gadawaf_type                 gadawaf
%   trowf_type                   trowf
%   codaf_type                   codaf
% Irregular (listed in data/verbs.exceptions.tsv): adnabod, af, bod, caf, canfyddaf, cydnabod, darfu, deuaf, dylwn, geni, gorfu, gwnaf ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
