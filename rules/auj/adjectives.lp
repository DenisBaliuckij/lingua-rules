% rules/auj/adjectives.lp
% Awjila Berber adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296241: A Grammar of Awjila Berber (Libya): Based on Umberto Paradisi’s Material (2013), pages 71, 72, 75, 76, 78, 79, 80, 81, 82, 83, 84, 88, 89, 101, 105, 106, 107, 108, 114, 115, 119, 122, 134
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, affixes in data/adjectives.paradigms.tsv):
%   amqqran_type                 aməqqəràn
%   amskun_type                  aməškùn
%   azuwar_type                  azuwàr
%   gzil_type                    gzìl, mlìl
%   zwa_type                     zwàɣ
%   staf_type                    šṭàf
%   alqquq_type                  aləqqùq
%   zif_type                     ɣzìf
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
