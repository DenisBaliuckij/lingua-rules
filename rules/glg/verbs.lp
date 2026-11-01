% rules/glg/verbs.lp
% Galician verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388965: Descriptive Grammar of the Galician Language (n.d.), pages 10, 11, 14, 15, 16, 20, 21
%   doc 895186: Síntese gramatical (2008), pages 51, 54, 56, 58, 60, 62, 64, 66, 67, 68, 70, 72, 74, 75, 76, 77, 78, 80, 81, 82, 83, 84, 85, 86, 88, 90, 91, 92, 94, 96
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   second_conjugation_er        comer — grammar: "second conjugation (-er)"
%   dar_type                     dar
%   dicir_type                   dicir
%   estar_type                   estar
%   ouvir_type                   ouvir
%   parir_type                   parir
%   ter_type                     ter
%   valer_type                   valer
%   vir_type                     vir
%   c1a_conxugacion              andar — grammar: "1ª Conxugación"
%   c3a_conxugacion              partir, fuxir — grammar: "3ª Conxugación"
%   c2a_conxugacion              varrer — grammar: "2ª Conxugación"
%   caer_type                    caer
% Irregular (listed in data/verbs.exceptions.tsv): caber, facer, haber, ir, poder, por, poñer, pracer, querer, saber, ser, traer ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
