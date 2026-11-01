% rules/cay/nouns.lp
% Cayuga nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38716: LIN 6050 Structure of Cayuga. Course Package. (2014), pages 18, 40, 41, 128, 148, 149
%   doc 70331: Native Languages: A Support Document for the Teaching of Language Patterns - Oneida, Cayug (2011), pages 16, 17, 18, 19, 27, 62, 63
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   k_ye_type                    k:yé
%   kahuwe_ya_type               kahuwe:yá
%   kanuto_tsheli_type           kanutó:tsheli
%   kana_tsheli_type             kaná:tsheli
%   katsi_type                   kátsi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
