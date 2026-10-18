% rules/sje/nouns.lp
% Pite Saami nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 207: A grammar of Pite Saami (2014), pages 109, 117, 118, 119, 120, 122, 130, 134, 139, 148, 152, 170, 181, 188, 191, 193, 194
%   doc 388175: A corpus-based grammar of spoken Pite Saami (2013), pages 116, 122, 123, 126, 129, 130, 138, 139, 142, 147, 156, 160, 187, 192, 194, 198, 200, 303
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   barrgo_type                  bärrgo
%   class_id                     skåvvlå — grammar: "Class Id"
%   class_ie                     vágge — grammar: "Class Ie"
%   class_ii                     ålmaj — grammar: "Class II"
%   class_ivb                    bena — grammar: "Class IVb"
%   class_iiia_denominal_noun    guolátj — grammar: "Class IIIa denominal noun"
%   class_ib                     mánná — grammar: "Class Ib"
%   class_iiia_nouns             sabek — grammar: "Class IIIa nouns"
%   class_iiia_nouns_2           vanás — grammar: "Class IIIa nouns"
%   class_ie_2                   guolle — grammar: "Class Ie"
%   class_iii_nouns_without_stem_allomorphy almatjij, ålolij — grammar: "Class III nouns without stem allomorphy"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
