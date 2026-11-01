% rules/goh/nouns.lp
% Old High German nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388432: Althochdeutsche Grammatik I: Laut- und Formenlehre (2004), pages 192, 196, 197, 201, 209, 215, 225, 301
%   doc 388434: Abriß der althochdeutschen Grammatik mit Berücksichtigung des Altsächsischen (1989), pages 34, 40
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   a_stamme                     tag — grammar: "a-Stämme"
%   deklination                  gast — grammar: "-Deklination"
%   ja_stamme                    kunni — grammar: "ja-Stämme"
%   ehemalige_germ_z_az_stamme   lamb — grammar: "Ehemalige germ. -/z-/-az-Stämme"
%   deklination_schwache_deklination hano — grammar: "«-Deklination (schwache Deklination)"
%   deklination_schwache_deklination_2 herza — grammar: "«-Deklination (schwache Deklination)"
%   ja_stamme_2                  hirti — grammar: "ja-Stämme"
%   konsonantische_flexion       naht — grammar: "konsonantische Flexion"
%   deklination_schwache_deklination_3 zunga — grammar: "«-Deklination (schwache Deklination)"
%   a_stamme_2                   wort — grammar: "a-Stämme"
%   vra_stamme                   horo — grammar: "vra-Stämme"
%   buoh_type                    buoh
%   u_deklination                sunu — grammar: "u-Deklination"
%   bruoh_type                   bruoh
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
