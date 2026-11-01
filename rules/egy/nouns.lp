% rules/egy/nouns.lp
% Egyptian (Ancient) nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22312: A Grammar of the Ancient Egyptian Pyramid Texts, Vol. 1: Unis (2014), pages 54
%   doc 28890: Middelægyptisk Grammatik: En standardteoretisk fremstilling (2008), pages 43
%   doc 296422: Late Egyptian Grammar: An Introduction (2005), pages 51
%   doc 296423: Egyptian Grammar: Being an Introduction to the Study of Hieroglyphs (1957), pages 100
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   pr_type                      pr
%   sn_type                      sn
%   snt_type                     snt
%   irt_type                     irt
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
