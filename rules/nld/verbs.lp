% rules/nld/verbs.lp
% Dutch verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 101153: Dutch: An Essential Grammar (2011), pages 38, 39, 44, 48, 50, 56, 80, 102, 103, 105, 106, 108, 109, 111, 114, 115, 116, 122, 139
%   doc 107001: Grammaire hollandaise (1850), pages 126, 138, 146, 201, 203, 204, 206
%   doc 108760: Dutch: A Comprehensive Grammar, 2nd edition (2010), pages 47, 81, 186, 188, 191, 193, 210, 220, 224, 226, 236
%   doc 937627: Dutch: An Essential Grammar (9th edition) (2010), pages 38, 39, 44, 48, 50, 56, 80, 102, 103, 105, 106, 108, 109, 111, 114, 115, 116, 122, 139
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   worden_type                  worden
%   drukken_type                 drukken
%   verbs_with_stems_ending_in_t_or_d helpen, rijden, houden — grammar: "Verbs with stems ending in -t or -d"
%   horen_type                   horen
%   verbs_with_stems_ending_in_t_or_d_2 weten — grammar: "Verbs with stems ending in -t or -d"
%   geloven_type                 geloven
%   verbs_with_stems_ending_in_t_or_d_3 zitten — grammar: "Verbs with stems ending in -t or -d"
%   reizen_type                  reizen
%   werken_type                  werken
%   fietsen_type                 fietsen, vertrouwen, lachen
%   hopen_type                   hopen
%   beginnen_type                beginnen
%   erkennen_type                erkennen
%   ervaren_type                 ervaren
%   genezen_type                 genezen, herlezen
%   herhalen_type                herhalen
%   leggen_type                  leggen
%   leven_type                   leven
%   ontdekken_type               ontdekken
%   onthouden_type               onthouden
%   praten_type                  praten
%   roken_type                   roken
%   schudden_type                schudden, zetten
%   straffen_type                straffen
%   verliezen_type               verliezen
%   bedanken_type                bedanken
%   kloppen_type                 kloppen
%   ontmoeten_type               ontmoeten
%   vallen_type                  vallen
%   verklaren_type               verklaren
%   activeren_type               activeren
%   antwoorden_type              antwoorden
%   weak_verbs                   baden — grammar: "weak verbs"
%   bestellen_type               bestellen
%   bevrijden_type               bevrijden
%   bouwen_type                  bouwen
%   digitaliseren_type           digitaliseren
%   glanzen_type                 glanzen
%   weak_verbs_2                 koken — grammar: "weak verbs"
%   weak_verbs_3                 krabben — grammar: "weak verbs"
%   weak_verbs_4                 kuchen — grammar: "weak verbs"
%   weak_verbs_5                 missen — grammar: "weak verbs"
%   naaien_type                  naaien
%   noteren_type                 noteren
%   weak_verbs_6                 pakken — grammar: "weak verbs"
%   studeren_type                studeren
%   weak_verbs_7                 volgen — grammar: "weak verbs"
% Irregular (listed in data/verbs.exceptions.tsv): bakken, beam en, begrijpen, belijden, benijden, bewegen, bezwijken, bieden, bijten, binden, blijken, blijven ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
