% rules/roh/verbs.lp
% Romansh (Sursilvan/Sutsilvan/Sutselvan/Vallader/Puter) verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388753: Grammatica d’instrucziun dal rumantsch grischun (2006), pages 47, 51, 52, 53, 54, 55, 59, 60, 61, 67, 72, 77, 80, 81, 91, 92, 93
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   c1_conjugaziun               dastgar, gidar — grammar: "1. conjugaziun"
%   duair_type                   duair, pudair, savair, stuair
%   vulair_type                  vulair
%   c4_conjugaziun               partir — grammar: "4. conjugaziun"
%   c2_conjugaziun               temair — grammar: "2. conjugaziun"
%   c3_conjugaziun               vender — grammar: "3. conjugaziun"
%   c4_conjugaziun_2             finir — grammar: "4. conjugaziun"
%   c1_conjugaziun_2             gratular — grammar: "1. conjugaziun"
%   particip_regulars_che_termineschan_sin_i destruì — grammar: "particip regulars che termineschan sin -ì"
%   particip_regulars_che_termineschan_sin_a maridà — grammar: "particip regulars che termineschan sin -à"
%   passiv                       elegì — grammar: "passiv"
% Irregular (listed in data/verbs.exceptions.tsv): dar, dir, far, fatg, pers
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
