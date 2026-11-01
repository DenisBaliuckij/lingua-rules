% rules/mhr/verbs.lp
% Mari (Cheremis) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389078: A Comprehensive Introduction to the Mari Language (2010), pages 44, 48, 57, 59, 61, 71, 72, 78, 79, 100, 130, 131, 132, 137, 149, 160, 172, 180, 181, 191, 214, 231, 237
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   conjugation_i                лудаш, йодаш — grammar: "Conjugation I"
%   conjugation_i_2              манаш, луд-аш, улаш — grammar: "Conjugation I"
%   conjugation_i_3              толаш, тол-аш, тунем-аш — grammar: "Conjugation I"
%   conjugation_i_4              кочкаш — grammar: "Conjugation I"
%   class_type                   кын’елаш
%   conjugation_ii               илаш, пураш, шонаш — grammar: "Conjugation II"
%   conjugation_ii_2             пуаш — grammar: "Conjugation II"
%   conjugation_i_5              тунемаш — grammar: "Conjugation I"
%   conjugation_i_6              ӱжаш — grammar: "Conjugation I"
%   conjugation_ii_3             ил-аш, вуч-аш, ка-яш, ышт-аш — grammar: "Conjugation II"
%   conjugation_ii_4             пу-аш — grammar: "Conjugation II"
%   conjugation_ii_5             возаш, саламлаш — grammar: "Conjugation II"
%   class_type_2                 кааш
%   passive_participle_with_possessive_suffi каяш — grammar: "passive participle with possessive suffixes"
%   conjugation_i_7              ли-яш — grammar: "Conjugation I"
%   class_type_3                 лияш
%   class_type_4                 мураш
%   passive_participle_with_possessive_suffi_2 ончаш — grammar: "passive participle with possessive suffixes"
%   conjugation_i_8              тӱҥалаш — grammar: "Conjugation I"
%   conjugation_ii_6             ужалаш — grammar: "Conjugation II"
%   conjugation_i_9              шу-аш — grammar: "Conjugation I"
%   conjugation_ii_7             вучаш — grammar: "Conjugation II"
%   conjugation_i_10             кодаш — grammar: "Conjugation I"
%   conjugation_i_11             кочк-аш — grammar: "Conjugation I"
%   conjugation_ii_8             кутыраш — grammar: "Conjugation II"
%   conjugation_i_12             лект-аш — grammar: "Conjugation I"
%   conjugation_i_13             мушк-аш — grammar: "Conjugation I"
%   conjugation_i_14             нал-аш — grammar: "Conjugation I"
%   conjugation_i_15             налаш — grammar: "Conjugation I"
%   conjugation_ii_9             полшаш — grammar: "Conjugation II"
%   conjugation_ii_10            туныкташ — grammar: "Conjugation II"
% Irregular (listed in data/verbs.exceptions.tsv): воз-аш
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
