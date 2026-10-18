% rules/lld/verbs.lp
% Ladin verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388266: Gramatica dl Ladin Standard (2001), pages 29, 45, 66, 70, 79, 80, 81, 82, 83, 84, 86, 87
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   de_type                      dé
%   mouje_type                   mouje, erde
%   to_type                      tò
%   savei_type                   savei
%   ii_ei                        vedei — grammar: "II -ei"
%   mueve_type                   mueve
%   cueje_type                   cueje
%   cueie_type                   cueie
%   cresce_type                  cresce
%   ivb                          capir, ciantar — grammar: "IVb"
%   iv_i_ivb                     capì — grammar: "IV -ì (IVb)"
%   i_e_ia                       cianté — grammar: "I -é (Ia)"
%   iva                          dormir — grammar: "IVa"
%   iv_i_iva                     dormì — grammar: "IV -ì (IVa)"
%   ib                           informar — grammar: "Ib"
%   i_e_ib                       informé — grammar: "I -é (Ib)"
%   iii                          perdar — grammar: "III"
%   iii_e                        perde — grammar: "III -e"
%   ii                           vedar — grammar: "II"
% Irregular (listed in data/verbs.exceptions.tsv): arpé, beive, cherpé, crié, cujì, daidé, daurì, dì, fé, jì, mené, morì ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
