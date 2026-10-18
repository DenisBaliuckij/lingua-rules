% rules/spp/nouns.lp
% Supyire nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296391: A Grammar of Supyire (1994), pages 74, 75, 102, 177
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   gender_1                     koo — grammar: "Gender 1"
%   gender_1_2                   $kM — grammar: "Gender 1"
%   gender_3                     baa — grammar: "Gender 3"
%   gender_1_3                   biliwe — grammar: "Gender 1"
%   gender_1_4                   foo — grammar: "gender 1"
%   gender_1_5                   fya — grammar: "Gender 1"
%   gender_1_6                   jya — grammar: "Gender 1"
%   gender_1_7                   kite — grammar: "Gender 1"
%   gender_3_2                   koolo — grammar: "Gender 3"
%   gender_3_3                   ku — grammar: "Gender 3"
%   gender_1_8                   kücwuun — grammar: "Gender 1"
%   gender_2                     küügd — grammar: "Gender 2"
%   gender_2_2                   küüyd — grammar: "Gender 2"
%   gender_3_4                   luu — grammar: "Gender 3"
%   gender_1_9                   mpi — grammar: "Gender 1"
%   gender_1_10                  noo — grammar: "Gender 1"
%   gender_3_5                   ntirine — grammar: "Gender 3"
%   gender_1_11                  nu — grammar: "gender 1"
%   gender_3_6                   pee — grammar: "Gender 3"
%   gender_1_12                  pworo — grammar: "Gender 1"
%   gender_1_13                  pwun — grammar: "Gender 1"
%   gender_1_14                  sd — grammar: "gender 1"
%   suu_type                     suu
%   tahala_type                  tahala
%   gender_1_15                  tu — grammar: "gender 1"
%   tugulo_type                  tugulo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
