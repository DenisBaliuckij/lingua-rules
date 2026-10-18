% rules/lav/nouns.lp
% Latvian nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 66450: Latviešu valodas gramatika (2013), pages 548, 549
%   doc 73759: Latvian Grammar (2021), pages 40, 58, 86, 150, 185, 195, 203, 227, 231, 233, 261, 293
%   doc 389070: A short grammar of Latgalian (2011), pages 18, 21, 22, 23, 27, 31, 33
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   c3_m                         akmens — grammar: "3 (M)"
%   c3_m_2                       brālis — grammar: "3 (M)"
%   c1_m                         ceļš — grammar: "1 (M)"
%   c4_f                         lietus — grammar: "4 (F)"
%   c5_f                         māsa — grammar: "5 (F)"
%   c6_f                         māte — grammar: "6 (F)"
%   c5_f_2                       puika — grammar: "5 (F)"
%   c1_m_2                       tēvs — grammar: "1 (M)"
%   c6_f_2                       zivs — grammar: "6 (F)"
%   c6_f_3                       ļaudis — grammar: "6 (F)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
