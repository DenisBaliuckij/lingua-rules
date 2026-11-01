% rules/tdl/adjectives.lp
% Sur adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 22715: A Grammar of Enxet Sur (2021), pages 149, 172, 231, 249, 250, 253, 470, 475, 487, 536, 570
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   semiverbs_and_adjectives_which_take_stat hox — grammar: "semiverbs and adjectives which take stative pronominal prefixes"
%   ahamtek_type                 ahamtek
%   ahoxek_type                  ahóxek
%   apkenna_type                 apkenna
%   asexyo_type                  asexyo
%   axakko_type                  axakko
%   loso_type                    lóso
%   etkok_type                   étkok
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
