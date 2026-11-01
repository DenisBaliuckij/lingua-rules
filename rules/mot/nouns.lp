% rules/mot/nouns.lp
% Bari nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296335: The tonal grammar of Bari (1987), pages 156, 254
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   lh_noun                      bAdfi? — grammar: "LH noun"
%   lh_noun_2                    biryA? — grammar: "LH noun"
%   lh_noun_3                    gurak — grammar: "LH noun"
%   lh_noun_4                    k&wAk — grammar: "LH noun"
%   lh_noun_5                    kCun&t — grammar: "LH noun"
%   lh_noun_6                    kakat — grammar: "LH noun"
%   lh_noun_7                    kiyir — grammar: "LH noun"
%   lh_noun_8                    musak — grammar: "LH noun"
%   lh_noun_9                    nyAngA? — grammar: "LH noun"
%   lh_noun_10                   ringwAt — grammar: "LH noun"
%   hlh_noun_root                tingili? — grammar: "HLH noun root"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
