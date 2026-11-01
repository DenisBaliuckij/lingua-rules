% rules/jpn/verbs.lp
% Japanese verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70862: Japanese Grammar: The Connecting Point (2010), pages 80, 81, 82, 83, 84, 85, 86, 88, 90, 91, 92, 144, 147, 195
%   doc 389526: An Historical Grammar of Japanese (1928), pages 146, 215
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   simple_conjugation           yuku — grammar: "Simple Conjugation"
%   cv_5i_conjugation_pattern    arau — grammar: "cV-5i Conjugation Pattern"
%   cv_4b_conjugation_pattern    manabu — grammar: "cV-4b Conjugation Pattern"
%   cv_4m_conjugation_pattern    nomu — grammar: "cV-4m Conjugation Pattern"
%   cv_5c_conjugation_pattern    matsu — grammar: "cV-5c Conjugation Pattern"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
