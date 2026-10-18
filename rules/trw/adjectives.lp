% rules/trw/adjectives.lp
% Torwali adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389860: An Overview of Linguistic Structures in Torwali, A Language of Northern Pakistan (2001), pages 54, 66, 69, 71, 78, 85, 86, 87, 88, 89
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   bar_type                     bar
%   cuk_type                     cuk
%   gfn_type                     gFn
%   ispor_type                   ispor
%   lin_type                     lin
%   lut_type                     lut
%   mit_type                     miT
%   olon_type                    olon
%   puran_type                   puran
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
