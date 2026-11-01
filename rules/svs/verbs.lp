% rules/svs/verbs.lp
% Savosavo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 19554: A grammar of Savosavo, a Papuan language of the Solomon Islands (2008), pages 78, 80, 103, 110, 153
%   doc 19555: A Grammar of Savosavo (2012), pages 96, 100, 112, 144
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   suffixing_verb_stem          kuvi-li — grammar: "suffixing verb stem"
%   prefixing_verb_stem          l-au — grammar: "prefixing verb stem"
%   pre_and_suffixing_verb_stem  l-ave-li — grammar: "pre- and suffixing verb stem"
%   verbs_that_mark_their_object_by_stem_mod bola, pala, sala, solo — grammar: "verbs that mark their object by stem modification"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
