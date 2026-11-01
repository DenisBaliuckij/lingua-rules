% rules/mxk/verbs.lp
% Monumbo verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 848865: Monumbo Grammar (n.d.), pages 3, 4, 10, 11, 24, 26, 45, 46
%   doc 848867: Die Monumbo-Sprache: Grammatik und Wörterverzeichnis (1875), pages 32, 37, 39, 41, 62, 83, 84, 100, 105, 110, 120, 121, 122, 124, 125, 130, 131, 138
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   iii_gruppe                   kiri — grammar: "III. Gruppe"
%   meme_tse_type                meme-tse
%   ndipemn_type                 ndipemn
%   aluak_tset_type              aluäk-tset
%   kat_type                     kat
%   aludk_tsei_type              aludk-tsei
%   tset_type                    tset
% Irregular (listed in data/verbs.exceptions.tsv): tserea
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
