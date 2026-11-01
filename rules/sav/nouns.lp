% rules/sav/nouns.lp
% Saafi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296307: A Grammatical Sketch of Saafi (2011), pages 28, 32, 62
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   fiin_type                    fiin
%   kiat_type                    kiat
%   kibi_type                    kibi
%   mbu_type                     mBu
%   misib_type                   misiB
%   muuma_type                   muuma
%   phud_type                    phuD
%   tonoha_type                  tonoha
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
