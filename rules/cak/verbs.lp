% rules/cak/verbs.lp
% Kaqchikel verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 79656: Rukem ik ri kaqchikel chi' / Gramática Kaqchikel (2001), pages 79, 94, 96, 101, 184, 195, 243, 244
%   doc 289495: A Grammar of the Cakchiquel Language of Guatemala (1884), pages 27, 29, 30, 36, 37, 38, 39, 40, 41, 43, 44
%   doc 289497: Supplementary Remarks to the Grammar of the Cakchiquel Language of Guatemala, Edited by D. (1885), pages 13
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   aho_type                     aho
%   intransitivo                 atm — grammar: "intransitivo"
%   pe_type                      pe, vah
%   be_type                      be
%   transitivo                   kito — grammar: "transitivo"
%   naq_type                     näq
%   active_verb_beginning_with_a_vowel oír — grammar: "ACTIVE VERB BEGINNING WITH A VOWEL"
%   va_type                      va
%   intransitivo_2               atin — grammar: "intransitivo"
%   etz_an_type                  etz'an
%   transitivo_2                 kiq'i — grammar: "transitivo"
%   intransitivo_3               q'ax — grammar: "intransitivo"
%   quicot_type                  quicot
%   transitivo_3                 ruk'ül — grammar: "transitivo"
%   war_type                     wär
%   transitivo_4                 q’etej — grammar: "transitivo"
%   il_type                      íl
%   qo_type                      qo
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
