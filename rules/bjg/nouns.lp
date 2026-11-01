% rules/bjg/nouns.lp
% Bijogo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296376: La langue bijogo de Bubaque (Guinée Bissau) (2004), pages 114, 157
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   u_oa_alternation             dømi — grammar: "U/ôA alternation"
% Irregular (listed in data/nouns.exceptions.tsv): dudu, nsÆgÆrÆka, tøkø, ønø
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
