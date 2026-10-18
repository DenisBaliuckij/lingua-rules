% rules/acr/nouns.lp
% Achi nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78533: Ukemik K’utuuj re Ch’a’teem Achi: Gramática Pedagógica del Idioma Achi (2018), pages 118, 119
%   doc 78540: Gramática descriptiva idioma Maya Achi (2003), pages 85
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   ajchaak_type                 ajchaak
%   ak_aal_type                  ak'aal
%   atzixeel_type                atzixeel
%   awaj_type                    awaj
%   chiriin_type                 chiriin
%   ixoq_type                    ixoq
%   k_type                       k
%   tereen_type                  tereen
%   tiit_type                    tiit
%   tijoneel_type                tijoneel
%   yawaa_type                   yawaa
% Irregular (listed in data/nouns.exceptions.tsv): alaa, alii
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
