% rules/bel/nouns.lp
% Belarusian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389565: Belorussian (1985), pages 15, 16, 20, 21, 23, 28
%   doc 389567: Fundamentals of Modern Belarusian (2004), pages 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 22, 24, 25, 26, 35, 36, 51, 52, 57, 58, 61, 63
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   neuter_o_stem                dreva — grammar: "Neuter o-stem"
%   a_stem                       halava — grammar: "a-stem"
%   masculine_o_stem             hórad — grammar: "Masculine o-stem"
%   neuter_nouns_ending_in_or    акенца — grammar: "neuter nouns ending in –жа, -ра, -ца, -ча, or –ша"
%   neuter_nouns_ending_in_or_2  воблака — grammar: "neuter nouns ending in –га, -ка, or –ха"
%   neuter_nouns_ending_in_or_3  вядро — grammar: "neuter nouns ending in –жо, -ро, -цо, -чо, or –шо"
%   neuter_nouns_ending_in       жыццё — grammar: "neuter nouns ending in –ё"
%   neuter_nouns_ending_in_2     кола — grammar: "neuter nouns ending in -а"
%   neuter_nouns_ending_in_or_4  крыло — grammar: "Neuter nouns ending in –о or -а"
%   neuter_nouns_ending_in_3     пакаленне — grammar: "neuter nouns ending in –е"
%   masculine_o_stem_2           стол — grammar: "Masculine o-stem"
%   a_stem_2                     bjaróza — grammar: "a-stem"
%   masculine_o_stem_3           stol — grammar: "Masculine o-stem"
%   a_stem_3                     бяроза — grammar: "a-stem"
%   a_stem_4                     галава — grammar: "a-stem"
%   masculine_o_stem_4           горад — grammar: "Masculine o-stem"
%   neuter_o_stem_2              дрэва — grammar: "Neuter o-stem"
%   class_type                   тата
%   class_type_2                 бацька
%   feminine_nouns_ending_in     галіна — grammar: "Feminine nouns ending in –а"
%   masculine_nouns_with_unaccented_endings гук — grammar: "Masculine nouns with unaccented endings in –г, -к, or –х"
%   nouns_of_this_group_with_the_unaccented дарога — grammar: "Nouns of this group with the unaccented endings –га, –ка, or –ха"
%   masculine_nouns_with_accented_endings_in двор — grammar: "Masculine nouns with accented endings in –ж, -р, -ц, -ч, or –ш"
%   feminine_nouns_ending_in_with_accented_e зямля — grammar: "Feminine nouns ending in –я with accented endings"
%   masculine_nouns_with_unaccented_endings_2 катэдж — grammar: "Masculine nouns with unaccented endings in –ж, -р, -ц, -ч, or –ш"
%   feminine_nouns_ending_in_with_unaccented лінія — grammar: "Feminine nouns ending in –я with unaccented endings"
%   nouns_of_this_group_with_the_unaccented_2 мара — grammar: "Nouns of this group with the unaccented endings –жа, -ра, -ча, -ца or –ша"
%   masculine_nouns_ending_in_or_with_unacce партфэль — grammar: "Masculine nouns ending in –ь or -й with unaccented endings"
%   masculine_nouns_ending_in_a_hard_consona план — grammar: "Masculine nouns ending in a hard consonant"
%   masculine_nouns_with_unaccented_endings_3 погляд — grammar: "Masculine nouns with unaccented endings in –д or –т"
%   masculine_nouns_with_accented_endings_in_2 пірог — grammar: "Masculine nouns with accented endings in –г, -к, or –х"
%   neuter_nouns_ending_in_4     стрэмя — grammar: "Neuter nouns ending in –мя"
%   masculine_nouns_with_accented_endings_in_3 суд — grammar: "Masculine nouns with accented endings in –д or –т"
%   feminine_nouns_ending_in_2   сцяна — grammar: "Feminine nouns ending in –а"
%   neuter_nouns_ending_in_5     цяля — grammar: "Neuter nouns ending in –я"
%   nouns_of_this_group_with_the_accented_en мяжа — grammar: "Nouns of this group with the accented endings –жа, -ра, -ча, -ца or –ша"
%   nouns_of_this_group_with_the_accented_en_2 нага — grammar: "Nouns of this group with the accented endings –га, –ка, or –ха"
%   neuter_o_stem_3              sjaló — grammar: "Neuter o-stem"
%   i_stem                       косць — grammar: "i-stem"
%   nouns_ending_in              гараджанін — grammar: "Nouns ending in -ін"
%   nouns_ending_in_2            грамадзянін — grammar: "Nouns ending in -ін"
%   nouns_ending_in_3            мешчанін — grammar: "Nouns ending in -ін"
%   nouns_ending_in_4            палачанін — grammar: "Nouns ending in -ін"
%   nouns_ending_in_5            селянін — grammar: "Nouns ending in -ін"
%   nouns_ending_in_6            славянін — grammar: "Nouns ending in -ін"
%   nouns_ending_in_7            татарын — grammar: "Nouns ending in -ін"
%   nouns_ending_in_8            хрысціянін — grammar: "Nouns ending in -ін"
% Irregular (listed in data/nouns.exceptions.tsv): вока, вуха, дзяўчына, дзіця, зерне, калена, кроў, курыца, любоў, неба, пан, сусед ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
