% rules/cha/verbs.lp
% Chamorro verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 827130: Spoken Chamorro: With Grammatical Notes and Glossary (Second Edition) (1980), pages 75
%   doc 827132: The Chamorro Language of Guam (1903), pages 16, 27, 28, 72, 86, 90, 93
%   doc 833494: Spoken Chamorro: An Intensive Language Course With Grammatical Notes and Glossary (1969), pages 52, 92, 93, 105
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   sixth_form_of_conjugation    kano — grammar: "sixth form of conjugation"
%   fanlilii_type                fanlilii
%   pine_type                    pine
%   chamo_type                   chamo
%   atog_type                    atog
%   chule_type                   chUle
%   chaijino_type                chaijino
%   hanao_type                   hanao
%   hdlom_type                   hdlom
%   huyong_type                  huyong
%   nafigo_type                  nafigo
%   saga_type                    saga
%   ugung_type                   ugung
%   fafiule_type                 fafiule
%   fanaitai_type                fanaitai
%   fanlii_type                  fanlii
%   fanuge_type                  fanuge
%   fatachong_type               fatachong
%   fato_type                    fato
%   faldgo_type                  faldgo
%   fambkat_type                 fambkat
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
