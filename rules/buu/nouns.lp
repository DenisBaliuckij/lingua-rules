% rules/buu/nouns.lp
% Budu nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70299: Govor Bitelića (2014), pages 169, 172, 181
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   naglasna_paradigma_a         lòpata, rȉba — grammar: "Naglasna paradigma A"
%   naglasna_paradigma_c         pȍļe — grammar: "Naglasna paradigma C"
%   magarad_type                 mȁgarāḓ, mȍmĉāḓ, ĉȅļāḓ
%   napast_type                  nápast, obíteļ, ļúbav
%   buducnost_type               budućnōst
%   dob_type                     dȏb
%   glupost_type                 glúpōst
%   ludost_type                  lȕdōst
%   mogucnost_type               mogúćnōst
%   narav_type                   nárav
%   pustos_type                  pústoš
%   perad_type                   pȅrāḓ
%   savjest_type                 sávjest
%   telad_type                   tȅlāḓ
%   cud_type                     ćȗḓ
%   tdribad_type                 ţdrȉbāḓ
%   tec_type                     ţȇĉ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
