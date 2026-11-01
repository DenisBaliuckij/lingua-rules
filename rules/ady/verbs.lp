% rules/ady/verbs.lp
% Abzakh (West Circassian) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 85218: Adıgece -Çerkezce- Anlamak & Düşünmek: Seslerin Ortaya Çıkışından Sözcüklere Dilin Oluşum  (2006), pages 197, 242
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   class_type                   псэлъэн
%   class_type_2                 іуэ
%   class_type_3                 псалъэ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
