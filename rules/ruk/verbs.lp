% rules/ruk/verbs.lp
% Kuche verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 296406: A Phonological Grammar of Kuche (n.d.), pages 38
%   doc 846673: New method of learning to read, write, and speak the Italian language, adapted for the use (n.d.), pages 44, 97, 238, 296, 330, 336, 371, 491, 492, 493, 497, 499, 500, 509, 516, 518, 519, 520, 524, 526
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   avere_type                   avere
%   c3                           credere, servire, punire — grammar: "3."
%   parlare_type                 parlare
%   conjugation_of_a_verb_with_two_infinitiv addurre — grammar: "CONJUGATION OF A VERB WITH TWO INFINITIVES"
%   nutrire_type                 nutrire
%   amare_type                   amare
%   c2                           ricevere — grammar: "2."
%   accendere_type               accendere
%   accorgersi_type              accorgersi
%   affliggere_type              affliggere
%   appendere_type               appendere
%   ascondere_type               ascondere
%   assolvere_type               assolvere, assorbere, cingere
%   assumere_type                assumere
%   chiedere_type                chiedere
%   chiudere_type                chiudere
%   verbs_in_isco                abolire, arricchire, capire, colpire ... — grammar: "verbs in isco"
%   verbs_in_isco_2              arrossire — grammar: "verbs in isco"
%   verbs_in_ire                 bollire, dormire, fuggire, partire ... — grammar: "verbs in ire"
%   verbs_in_isco_3              compatire — grammar: "verbs in isco"
%   verbs_in_isco_4              concepire — grammar: "verbs in isco"
%   verbs_in_ire_2               convertire — grammar: "verbs in ire"
%   verbs_in_ire_3               coprire — grammar: "verbs in ire"
%   verbs_in_ire_4               cucire — grammar: "verbs in ire"
%   verbs_in_isco_5              digerlrc — grammar: "verbs in isco"
%   verbs_in_isco_6              impnzzire — grammar: "verbs in isco"
%   verbs_in_isco_7              languire — grammar: "verbs in isco"
%   verbs_in_isco_8              abborrire — grammar: "verbs in isco"
%   verbs_in_ire_5               aprire — grammar: "verbs in ire"
%   ardere_type                  ardere
%   verbs_in_isco_9              bandire — grammar: "verbs in isco"
%   difendersi_type              difendersi
%   verbs_in_isco_10             eseguirc — grammar: "verbs in isco"
%   verbs_in_isco_11             gradire — grammar: "verbs in isco"
%   verbs_in_ire_6               soffrire — grammar: "verbs in ire"
%   verbs_in_isco_12             tradire — grammar: "verbs in isco"
%   vedere_type                  vedere
%   verbs_in_ire_7               vestire — grammar: "verbs in ire"
% Irregular (listed in data/verbs.exceptions.tsv): andare, cadere, conoscere, corre, dare, dolere, essere, fare, leggere, piacere, porre, prendere ...
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
