% rules/lzl/nouns.lp
% Naman nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 626249: Naman: a vanishing language of Malakula (Vanuatu) (2014), pages 79, 95, 96, 127, 128, 129, 130, 132
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   directly_possessed_noun      batë, bongo, dabakha, galë ... — grammar: "directly possessed noun"
%   directly_possessed_noun_2    delnge — grammar: "directly possessed noun"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
