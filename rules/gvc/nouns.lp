% rules/gvc/nouns.lp
% Wanano nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388281: A Reference Grammar of Wanano (2004), pages 159, 164, 173, 174
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   animate_derived_nouns        yo’ga-ri — grammar: "animate derived nouns"
%   nouns_with_suffix_a          ba’a — grammar: "nouns with suffix -a"
%   nouns_with_suffix_a_2        dasa — grammar: "nouns with suffix -a"
%   dapo_type                    da’po
%   dise_type                    dise
%   animate_derived_nouns_2      hoa-ri — grammar: "animate derived nouns"
%   nouns_with_suffix_a_3        khu — grammar: "nouns with suffix -a"
%   wese_type                    wese
%   wee_type                     wë’ë
%   nouns_with_suffix_a_4        yese — grammar: "nouns with suffix -a"
% Irregular (listed in data/nouns.exceptions.tsv): ka
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
