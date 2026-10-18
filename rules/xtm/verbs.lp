% rules/xtm/verbs.lp
% Mixtec (Magdalena Peñasco) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389493: Gramática del mixteco de Magdalena Peñasco (Saꞌan Ñuu Savi) (2013), pages 32, 224, 242, 243, 295, 296
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verbos_incoativos_de_posicion jinkava — grammar: "verbos incoativos de posición"
%   verbos_incoativos_de_posicion_2 jinkatuu — grammar: "verbos incoativos de posición"
%   verbos_incoativos_de_posicion_3 jinkavatuu — grammar: "verbos incoativos de posición"
%   verbos_incoativos_de_posicion_4 jinkoo — grammar: "verbos incoativos de posición"
%   verbos_incoativos_de_posicion_5 jinkuiñi — grammar: "verbos incoativos de posición"
%   kiku_type                    kiku
%   kun_kava_type                kun-kava
%   kunu_type                    kunu
%   sunkava_type                 sunkava
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
