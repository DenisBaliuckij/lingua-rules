% rules/did/verbs.lp
% Lango verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 14808: A Grammar of Lango (1992), pages 94, 96, 99, 100, 102, 103, 108, 109, 111, 113, 115, 121, 122, 125
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   gikko_type                   gikko
%   kwan_type                    kwän
%   kwan_type_2                  kwan
%   gik_type                     gik
%   ne_na_type                   ne'na
%   onena_type                   onena
%   teddo_type                   teddo
%   too_type                     too
%   kello_type                   kello
%   anenna_type                  änennä
%   onna_type                    ön£nä
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
