% rules/aib/verbs.lp
% Ainu verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389506: The Phonemics and Morphology of Hokkaido Ainu (1968), pages 40, 48, 49
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   ahun_type                    ahun
%   akonere_type                 akonere
%   amucici_type                 amucici
%   ani_type                     ani
%   anu_type                     anu
%   as_type                      as
%   asinke_type                  asinke
%   asip_type                    asip
%   ek_type                      ek
%   eok_type                     eok
%   heasi_type                   heasi
%   hekatu_type                  hekatu
%   sat_type                     sat
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
