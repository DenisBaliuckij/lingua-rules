% rules/xht/nouns.lp
% Hattic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 111113: Alt-Kleinasiatische Sprachen (1969), pages 56, 261, 262
%   doc 388682: Языки мира: Древние реликтовые языки Передней Азии (Languages of the World: Ancient Relict (2010), pages 20
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   i_stamme                     d!Jaldi — grammar: "i-Stamme"
%   a_und_u_stamme               IMenua — grammar: "a- und u-Stamme"
%   i_stamme_2                   esi — grammar: "i-Stamme"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
