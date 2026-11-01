% rules/ydd/nouns.lp
% Yiddish nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388703: Yiddish (2010), pages 16, 17, 18
%   doc 388704: Yiddish: A Survey and a Grammar (1979), pages 241, 242, 243, 257, 258, 259, 260, 263, 265, 266, 268, 269, 272, 277, 279, 281, 282, 283, 284, 285, 289, 312
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   hers_type                    Hers, Rabinovic
%   buuerex_type                 Buuerex, Pinxys, Svarc, Traany
%   buby_type                    buby, mamy, mjjmy
%   hare_type                    hare
%   lid_type                     lid
%   mini_type                    mini
%   riby_type                    riby
%   taty_type                    taty
%   zaidy_type                   zaidy
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
