% rules/amp/verbs.lp
% Alamblak verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 9812: The Alamblak language of Papua New Guinea (East Sepik) (1984), pages 56, 57, 81, 122, 151, 155, 322
%   doc 9813: A Grammar of Alamblak (Papua New Guinea) (1979), pages 84
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   kit_type                     kit
%   tat_we_type                  tat-we
% Irregular (listed in data/verbs.exceptions.tsv): fune, hay, may, ptthay, wayn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
