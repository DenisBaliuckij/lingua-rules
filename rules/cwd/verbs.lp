% rules/cwd/verbs.lp
% Woods Cree verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15416: Beginning Cree: Mâci-nêhiyawêwin (2012), pages 13, 25, 100, 101, 129, 136, 175, 184
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   isiyihkaso_type              isiyihkâso, itahtopiponê, ohcî, ohpiki
%   wiki_type                    wîki
%   inanimate_intransitive_verbs_vii kimiwan, pîwan, wâsêskwan, yîkwaskwan ... — grammar: "inanimate intransitive verbs (VII)"
%   inanimate_intransitive_verbs_vii_2 kimiwasin, kisinâw, kisâstêw, mispon ... — grammar: "inanimate intransitive verbs (VII)"
%   kiskinwahamakosi_type        kiskinwahamâkosi
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
