% rules/she/nouns.lp
% Sheko nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388961: A grammar of Sheko (2010), pages 162, 165, 187, 300, 303
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   baadu_type                   báádù
%   baara_type                   bāārā
%   kati_type                    kátʃí
%   nyaku_type                   nyākū
%   tuun_type                    túún
%   uutn_type                    uutǹ
%   yaab_type                    yááb
%   aab_type                     ááb
%   oo_type                      ʂóóʐ
%   uun_type                     ʂūūn
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
