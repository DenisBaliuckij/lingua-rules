% rules/xns/verbs.lp
% Kanashi verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 96177: Synchronic and Diachronic Aspects of Kanashi (2022), pages 108, 127, 128, 129, 153, 156, 160
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   to_type                      to
%   nem_type                     nem
%   tu_am_type                   tuŋ-am
%   a_m_type                     ʣaː-m
%   ha_m_type                    ʦʰaː-m
%   i_m_type                     ʧi-m
%   tu_ja_m_type                 tuʃ-jaː-m
% Irregular (listed in data/verbs.exceptions.tsv): ken
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
