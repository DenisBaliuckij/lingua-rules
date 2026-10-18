% rules/ayh/nouns.lp
% Hadari Arabic nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 44432: A Grammar of Hadari Arabic: A Contrastive-Typological Perspective (2014), pages 71, 73, 74
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   sound_plural                 muʿallim — grammar: "sound plural"
%   sound_plural_2               muʿallima — grammar: "sound plural"
%   cc_singulars                 faar — grammar: "CɑC singulars"
%   cvccaac_singulars_quadriliteral gərguur — grammar: "CvCCaaC singulars (Quadriliteral)"
%   cvccaac_singulars_triliteral gəṣṣaab — grammar: "CvCCaaC singulars (Triliteral)"
%   caacuuc_singulars            kaaduud — grammar: "CaaCuuC singulars"
%   cvccaac_singulars_quadriliteral_2 miftaaḥ — grammar: "CvCCaaC singulars (Quadriliteral)"
%   cc_singulars_2               riil — grammar: "CɛɛC singulars"
%   cc_singulars_3               zaar — grammar: "CɑC singulars"
%   cc_singulars_4               ġaar — grammar: "CɑC singulars"
%   caacuuc_singulars_2          ʿaamuud — grammar: "CaaCuuC singulars"
%   cc_singulars_5               ʿɛɛ — grammar: "CɛɛC singulars"
%   caacuuc_singulars_3          ṣaaruux — grammar: "CaaCuuC singulars"
%   caacuuc_singulars_4          ṭaabuur — grammar: "CaaCuuC singulars"
%   cc_singulars_6               ṭaar — grammar: "CɑC singulars"
%   cvccaac_singulars_triliteral_2 ṭayyaarə — grammar: "CvCCaaC singulars (Triliteral)"
%   cvccaac_singulars_triliteral_3 ṭərraad — grammar: "CvCCaaC singulars (Triliteral)"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
