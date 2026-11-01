% rules/sid/nouns.lp
% Sidaama nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 8751: A Grammar of Sidaama (Sidamo), A Cushitic Language of Ethiopia (2007), pages 165, 168, 225, 232, 241, 249, 366, 404, 420, 421, 749
%   doc 853568: Manuale di Sidamo (n.d.), pages 2
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, affixes in data/nouns.paradigms.tsv):
%   ama_type                     ama, anna
%   proper_nouns_for_locations_m Awaasa — grammar: "Proper nouns for locations (M)"
%   proper_nouns_for_locations_m_2 Bansa — grammar: "Proper nouns for locations (M)"
%   proper_nouns_for_locations_f Hula — grammar: "Proper nouns for locations (F)"
%   proper_nouns_for_locations_f_2 Irga — grammar: "Proper nouns for locations (F)"
%   proper_nouns_for_locations_m_3 Wondo — grammar: "Proper nouns for locations (M)"
%   locational_nouns             aana — grammar: "Locational nouns"
%   locational_nouns_2           giddo — grammar: "Locational nouns"
%   locational_nouns_3           mereero — grammar: "Locational nouns"
%   daun_type                    daɡun
%   midaano_type                 midaano
%   sina_type                    sina
%   wosfi_type                   wosﬁ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
