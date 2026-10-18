% rules/prs/verbs.lp
% Dari verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 16981: Le persan parlé en Afghanistan : grammaire du Kâboli accompagnée d'un recueil de quatrains (1970), pages 85, 88, 101
%   doc 104552: Grammatica persiana (1911), pages 50, 127
%   doc 895281: Spoken Dari. Preliminary Edition. (1980), pages 107
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   c2_forme                     astom — grammar: "2° forme"
%   borem_type                   borem
%   merom_type                   merom
%   raftem_type                  raftem
%   raftom_type                  raftom
%   class_type                   خواندن
%   far_type                     far
%   type_zadan_battre            zadan — grammar: "TYPE : ZADAN "battre""
%   bar_smadan_type              bar-Smadan
%   bar_awordan_type             bar-âwordan, far-âwordan
%   dar_a_wordan_type            dar-â"wordan
%   dar_amadan_type              dar-âmadan
%   war_dastan_type              war-dâstan
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
