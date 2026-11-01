% rules/phl/nouns.lp
% Palula nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93: A grammar of Palula (2016), pages 71, 72, 73, 74, 138, 140, 141, 142, 143, 145, 147, 149, 156, 185, 234, 246, 249, 253, 254, 274, 321, 323
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   sin_type                     ṣinɡ
%   a_declension_nouns_with_ending_ai amzarái, booǰái, kooɡái, manɡái — grammar: "a-declension nouns with ending ái"
%   aan_declension               anɡreéz — grammar: "aan-declension"
%   aan_declension_v_ending      baačaá — grammar: "aan-declension, V-ending"
%   a_declension_nouns_with_ending_u_or_i beeṭí, kilí, kursí — grammar: "a-declension nouns with ending ú or í"
%   a_declension_nouns_with_ending_u_or_i_2 bhaampú — grammar: "a-declension nouns with ending ú or í"
%   a_declension_nouns           bíi, kráam — grammar: "a-declension nouns"
%   a_declension_nouns_with_ending_accented c̣haaṇbharó — grammar: "a-declension nouns with ending accented ó"
%   aan_declension_2             deéw — grammar: "aan-declension"
%   a_declension_nouns_with_length_alternati dhaataár — grammar: "a-declension nouns with length alternation"
%   i_declension_nouns_with_umlaut dukaan — grammar: "i-declension nouns with umlaut"
%   a_declension_nouns_with_length_alternati_2 dáar — grammar: "a-declension nouns with length alternation"
%   a_declension_nouns_with_length_alternati_3 haál — grammar: "a-declension nouns with length alternation"
%   i_declension_nouns_with_umlaut_2 himaál — grammar: "i-declension nouns with umlaut"
%   i_declension_nouns           kuḍ, ḍheer — grammar: "i-declension nouns"
%   ee_declension                kuṇḍá, qisá, ǰinaazá — grammar: "ee-declension"
%   i_declension_nouns_2         maṇḍáu — grammar: "i-declension nouns"
%   ee_declension_2              paalaá — grammar: "ee-declension"
%   a_declension_nouns_with_ending_unaccente phalúuṛu, thaskúuru, tóoru, ǰáanu — grammar: "a-declension nouns with ending unaccented u"
%   i_declension                 preṣ — grammar: "i-declension"
%   i_declension_nouns_3         préṣ — grammar: "i-declension nouns"
%   a_declension                 putr — grammar: "a-declension"
%   aan_declension_3             yaár — grammar: "aan-declension"
%   i_declension_nouns_with_umlaut_3 ǰumaát — grammar: "i-declension nouns with umlaut"
%   a_declension_nouns_with_ending_accented_2 ɡhaḍeeró — grammar: "a-declension nouns with ending accented ó"
%   a_declension_nouns_with_length_alternati_4 ḍáaɡ — grammar: "a-declension nouns with length alternation"
%   bheen_type                   bheéṇ
%   kuri_type                    kúṛi
%   miis_type                    míiš
%   aan_declension_4             ẓamí — grammar: "aan-declension"
%   a_declension_nouns_2         c̣hatróol — grammar: "a-declension nouns"
%   m_declension                 déeṛi — grammar: "m-declension"
%   m_declension_2               méemi — grammar: "m-declension"
%   m_declension_3               phaí — grammar: "m-declension"
%   m_declension_4               phéepi — grammar: "m-declension"
%   m_declension_5               čhéeli — grammar: "m-declension"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
