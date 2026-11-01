% rules/lat/adjectives.lp
% Latin adjectives: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 849014: Ioannis Despauterii Universal grammatica multo quam antehac emaculatior : cum doctissimis  (n.d.), pages 84, 85, 106, 156, 213, 269, 276, 279, 302, 307
%   doc 849025: Grammatica Ioannis Despauterii : prima pars grammatice Joannis Despauterii ... (1540), pages 29, 64, 74, 189, 434, 442, 443
%
% Classes (adj_class/2 in data/adjectives.lexicon.tsv, endings in data/adjectives.paradigms.tsv):
%   niger_type                   niger
%   dulcis_type                  dulcis, fortis
%   felix_type                   felix
%   adjektiva_der_iii_deklination acer, alacer, campester, celeber ... — grammar: "Adjektiva der III. Deklination"
%   comparatiuus_a_nomine_fecundz_declinatio amicus, augustus, pudicus, sollicitus — grammar: "comparatiuus à nomine fecundz declinationis"
%   bonus_type                   bonus
%   celer_type                   celer
%   fatur_type                   fatur
%   ludicres_type                ludicres, mediocres
%   melior_type                  melior
%   comparatiuus_a_nomine_fecundz_declinatio_2 spurcus — grammar: "comparatiuus à nomine fecundz declinationis"
% Irregular (listed in data/adjectives.exceptions.tsv): sinister
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    adj_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
