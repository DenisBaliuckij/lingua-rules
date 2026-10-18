% rules/wmb/verbs.lp
% Wambaya verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 93308: A grammar of Wambaya, Northern Territory (Australia) (2001), pages 86, 126, 127, 146, 176, 178
%   doc 389146: A Grammar of Wambaya (1993), pages 156, 168, 177, 178, 211, 212, 214, 215
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   j_class                      daguma, dawu, junku, mawula ... — grammar: "J Class"
%   c0_class                     ngaj — grammar: "0 Class"
%   class                        agard, gaj, gulug, nimij ... — grammar: "Ø Class"
%   j_class_2                    banjarri — grammar: "J Class"
%   class_2                      ngarag — grammar: "Ø Class"
%   class_3                      ngarl — grammar: "Ø Class"
%   irregular                    ngajbi — grammar: "irregular"
%   j_class_3                    junmî — grammar: "J Class"
% Irregular (listed in data/verbs.exceptions.tsv): gajurru, ganjimi, gannga, janganja, mirrang, nanganangali, ngalanyi, wugbardi, yabu, yarru, yugu
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
