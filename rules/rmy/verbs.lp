% rules/rmy/verbs.lp
% Albanian verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19145: A Grammar of North West Lovari Romani / Gramatika severozápadní olaštiny (lovárštiny) (2012), pages 70, 71, 73, 74, 75, 77, 78, 150, 151, 163
%   doc 389388: A Grammatical Sketch of Albanian for students of Indo-European (2012), pages 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 28
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   punoj_type                   punoj
%   a_conjugation                as — grammar: "a-Conjugation"
%   uv_conjugation               baš — grammar: "uv-Conjugation"
%   hap_type                     hap
%   athematic                    jam — grammar: "athematic"
%   athematic_2                  jap — grammar: "athematic"
%   laj_type                     laj
%   e_conjugation                phen — grammar: "e-Conjugation"
%   i_conjugation                vorb — grammar: "i-Conjugation"
%   av_type                      av
%   athematic_3                  di, ha — grammar: "athematic"
%   athematic_4                  ka — grammar: "athematic"
%   kam_type                     kam
%   vendos_type                  vendos
%   vras_type                    vras
% Irregular (listed in data/verbs.exceptions.tsv): dua, eci
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
