% rules/mkf/adjectives.lp
% Miya adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 52866: A Grammar of Miya (1998), pages 73, 77, 80, 106, 108, 109, 114, 135, 137, 168
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   reduplicated_adjectival_nouns byatlyama, cuwcuw, kwayakwaya — grammar: "reduplicated adjectival nouns"
%   adjectival_nouns_with_formative_ee casa, mbatlg — grammar: "adjectival nouns with formative ee"
%   reduplicated_adjectival_nouns_2 d'yamaayama — grammar: "reduplicated adjectival nouns"
%   reduplicated_adjectival_nouns_3 daBosan — grammar: "reduplicated adjectival nouns"
%   reduplicated_adjectival_nouns_4 gwilllgsanna — grammar: "reduplicated adjectival nouns"
%   reduplicated_adjectival_nouns_5 homayna — grammar: "reduplicated adjectival nouns"
%   adjectival_nouns_with_formative_ee_2 kUlkul — grammar: "adjectival nouns with formative ee"
%   reduplicated_adjectival_nouns_6 kyarati — grammar: "reduplicated adjectival nouns"
%   primary_adjectives           pyoona — grammar: "primary adjectives"
%   reduplicated_adjectival_nouns_7 raayad'i — grammar: "reduplicated adjectival nouns"
%   hausa_borrowings             saaboo — grammar: "Hausa borrowings"
%   adjectival_nouns_with_formative_ee_3 saar — grammar: "adjectival nouns with formative ee"
%   reduplicated_adjectival_nouns_8 tyamatyam — grammar: "reduplicated adjectival nouns"
%   reduplicated_adjectival_nouns_9 fawlifawa — grammar: "reduplicated adjectival nouns"
%   primary_adjectives_2         gilllgna — grammar: "primary adjectives"
%   reduplicated_adjectival_nouns_10 ndlBiytlg — grammar: "reduplicated adjectival nouns"
%   reduplicated_adjectival_nouns_11 ts?mts — grammar: "reduplicated adjectival nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
