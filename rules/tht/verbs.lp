% rules/tht/verbs.lp
% Tahltan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 388837: Précis de grammaire nahanaise (1899), pages 12, 17, 25, 26, 31, 36, 37, 45
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   premiere_conjugaison         estcoc — grammar: "premiere conjugaison"
%   verbes_de_station            t'séstah — grammar: "verbes de station"
%   verbes_de_locomotion_l       ke-nastah — grammar: "verbes de locomotion (l-<)"
%   premiere_conjugaison_2       thahideWi — grammar: "première conjugaison"
%   verbes_qualificatifs         ta-as'kotle — grammar: "verbes qualificatifs"
%   verbes_de_station_2          siKe — grammar: "verbes de station"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
