% rules/tpn/verbs.lp
% Tupinambá verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 2651: A Role and Reference Grammar Description of Tupinambá (n.d.), pages 153
%   doc 103352: Curso de Tupi Antigo: Gramática, Exercícios, Textos (1956), pages 55, 67
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   m_transitive_verb            akaβ — grammar: "M-transitive verb"
%   segunda_conjugacao           bebé — grammar: "SEGUNDA CONJUGAÇÃO"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
