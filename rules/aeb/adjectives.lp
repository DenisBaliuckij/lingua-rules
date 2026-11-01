% rules/aeb/adjectives.lp
% Tunisian Arabic adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 21366: Tunisian Arabic Basic Course. Volumes 1 and 2. (1970), pages 86, 100, 152, 156, 178, 287, 295
%   doc 21437: Course in Tunisian Arabic (n.d.), pages 39, 95, 357, 378, 379
%   doc 21471: Tunisian Arabic in 30 Lessons: Learn Arabic Just The Way As People Talk ! (2018), pages 24, 46
%   doc 854489: Peace Corps/Tunisia Course in Tunisian Arabic (1979), pages 30, 40, 96, 358, 379, 380
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   regular_color_words          abyidh — grammar: "regular color words"
%   regular_color_words_2        akgil — grammar: "regular color words"
%   regular_color_words_3        asfir — grammar: "regular color words"
%   regular_color_words_4        axdir — grammar: "regular color words"
%   regular_color_words_5        axmir — grammar: "regular color words"
%   regular_color_words_6        azriq — grammar: "regular color words"
%   fhiyn_type                   fhiyn
%   hsan_type                    hsan
%   mri_dh_type                  mri:dh
%   qbiyh_type                   qbiyH
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
