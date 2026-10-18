% rules/tkm/verbs.lp
% Takelma verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 65878: Takelma Texts and Grammar (1990), pages 179, 182, 187, 197, 199, 207, 208, 252, 305, 307
%   doc 105867: Elements of the grammar of the English language (1788), pages 122, 125, 126, 133, 140, 141
%   doc 108748: The Takelma language of southwestern Oregon (1909), pages 189, 199, 202, 238, 257, 269
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   dom_type                     dom
%   miscellaneous_verbs          tin — grammar: "miscellaneous verbs"
%   transitivecontinued_passive  na — grammar: "Transitive—Continued Passive"
%   d_m_type                     d^m
%   active_inferential_subordinates_with_thi domk — grammar: "active inferential subordinates with third personal object"
%   class_iv_intransitives_with_transitive_a smayamaf^n — grammar: "Class IV intransitives with transitive aorist"
%   f_type                       f
%   fowme_k_a_type               fowme'k'a
%   transitive_verb              homom — grammar: "transitive verb"
%   intransitive_verb            jtog — grammar: "intransitive verb"
%   class_iv_intransitives_with_transitive_a_2 sgekyaf^n — grammar: "Class IV intransitives with transitive aorist"
%   class_iv_intransitives_with_transitive_a_3 we'Tc!al&^n — grammar: "Class IV intransitives with transitive aorist"
%   bake_type                    bake
%   fold_type                    fold
%   gravel_type                  gravel
%   hew_type                     hew
%   jfu_k_a_type                 jfu'k'a·
%   load_type                    load
%   mow_type                     mow
%   sow_type                     sow
%   strow_type                   strow
% Irregular (listed in data/verbs.exceptions.tsv): fall, forſuke, wake
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
