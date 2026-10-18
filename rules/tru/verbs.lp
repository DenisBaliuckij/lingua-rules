% rules/tru/verbs.lp
% Turoyo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 827780: Šlomo Surayt II: Surayt-Aramäisch (Turoyo) für Fortgeschrittene (2020), pages 27, 29, 30, 50, 107, 109, 110, 163, 165
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verben_mit_w_als_dritten_wurzelkonsonant kṯw — grammar: "Verben mit w als dritten Wurzelkonsonanten"
%   verben_mit_y_als_ersten_wurzelkonsonante ynq — grammar: "Verben mit /y/ als ersten Wurzelkonsonanten"
%   i_obe_hule                   ʾby — grammar: "I: obe – hule"
%   i_omar_mrle                  ʾmr — grammar: "I: omar – mёrle"
%   qtl_type                     qtl
%   sql_type                     šql
%   grs_type                     grš
%   goras_type                   goraš
% Irregular (listed in data/verbs.exceptions.tsv): howe – hawi, howele – hawile
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
