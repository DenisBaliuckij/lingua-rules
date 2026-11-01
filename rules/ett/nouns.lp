% rules/ett/nouns.lp
% Etruscan nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71671: Zikh Rasna: A Manual of the Etruscan Language and Inscriptions (2008), pages 36, 37, 42, 46
%   doc 388568: Etruscan (2004), pages 13
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   vowel_stems                  rasna, mutna — grammar: "vowel stems"
%   consonant_vowel_stems        vel — grammar: "consonant/vowel stems"
%   consonant_stems              laris — grammar: "consonant stems"
%   consonant_stems_2            tiur — grammar: "consonant stems"
%   animate_plural_inflection    ais — grammar: "animate plural inflection"
%   consonant_stems_3            zilc — grammar: "consonant stems"
%   animate_plural_inflection_2  elenar — grammar: "animate plural inflection"
%   inanimate_plural_inflection  flerxva — grammar: "inanimate plural inflection"
% Irregular (listed in data/nouns.exceptions.tsv): clan
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
