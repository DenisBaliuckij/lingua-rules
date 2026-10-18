% rules/sjs/nouns.lp
% Senhaja Berber nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 41194: Senhaja Berber Varieties: Phonology, Morphology, and Morphosyntax (2021), pages 387, 545, 546
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   am_type                      ɛam
%   derhem_type                  derhem
%   shar_type                    šhaṛ
%   tu_stem                      ṯurin — grammar: "ṯu-stem"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
