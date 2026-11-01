% rules/etr/nouns.lp
% Edolo nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388303: Aspects of Edolo Grammar (1994), pages 49, 72, 81, 82, 160
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   kin_terms                    nado — grammar: "Kin terms"
%   kin_terms_2                  nafege — grammar: "Kin terms"
%   kin_terms_3                  nauwa, naye — grammar: "Kin terms"
%   kin_terms_4                  nawisi — grammar: "Kin terms"
%   kin_terms_5                  naëö — grammar: "Kin terms"
%   kin_terms_6                  nebabo, nebase, nedaeo, nedo ... — grammar: "Kin terms"
%   kin_terms_7                  nelowo, neme — grammar: "Kin terms"
%   kin_terms_8                  nemalö, nesalo — grammar: "Kin terms"
%   kin_terms_9                  nibia, nidiwi — grammar: "Kin terms"
%   kin_terms_10                 näwi — grammar: "Kin terms"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
