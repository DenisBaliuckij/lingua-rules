% rules/zwa/verbs.lp
% Zay verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 70567: Das Zay: Deskriptive Grammatik einer Ostguragesprache (Äthiosemitisch) (1985), pages 81, 86, 148, 155, 163, 164, 178, 190, 231, 232
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   possession_im_prasens        ?ale — grammar: "Possession im Präsens"
%   relatives_imperfektiv        neql — grammar: "Relatives Imperfektiv"
%   lokatives_sein_im_prasens    ?ille — grammar: "Lokatives Sein im Präsens"
% Irregular (listed in data/verbs.exceptions.tsv): bäl
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
