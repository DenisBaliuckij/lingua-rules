% rules/sjw/nouns.lp
% Shawnee nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 71632: Shawnee grammar (1994), pages 169, 170, 177, 178, 182, 183, 205, 207, 208, 209, 210, 213
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ha_ko_kw_type                ha'ko'kw
%   hanikw_type                  hanikw
%   hazika_type                  hazika
%   ho_kwaka_type                ho'kwaka
%   m_geew_a_type                m'geew-a
%   ni_lee_a_type                ni-leE-a
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
