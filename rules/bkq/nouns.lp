% rules/bkq/nouns.lp
% Bakairí nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 56: A Grammar of the Bakairi Language (2022), pages 182
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   paigo_type                   paigo
%   kono_type                    kono
%   kug_iwidi_type               kug-iwidi
%   kugu_type                    kugu
%   seko_type                    seko
%   up_type                      ɨupɨ
%   up_iso_type                  ɨupɨ-iso
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
