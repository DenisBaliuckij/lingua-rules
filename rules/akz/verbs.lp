% rules/akz/verbs.lp
% Alabama verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389999: The Language of the Alabama Indians (1982), pages 152, 153, 154, 155, 164, 167, 178, 179, 181, 182, 185
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   afaa_type                    afaa
%   conjugation_pattern_lpl_2sg_2pl asalici, maatacakhi — grammar: "Conjugation pattern (lpl, 2sg, 2pl)"
%   balaakaalo_type              balaakaalo
%   periphrastic_conjugation     hotina — grammar: "Periphrastic conjugation"
%   cikr_set_negation            istonti — grammar: "cikr-set negation"
%   limitkaalo_type              limitkaalo
%   tak_set_negation             okbah — grammar: "tak-set negation"
%   cikr_set_negation_2          oompa — grammar: "cikr-set negation"
%   cikr_set_negation_3          sso — grammar: "cikr-set negation"
%   stilaalo_type                stilaalo
%   yah_type                     yah
%   tak_set_negation_2           anoo — grammar: "tak-set negation"
%   coopaalo_type                coopaalo
%   tak_set_negation_3           fat, bit — grammar: "tak-set negation"
%   feeli_type                   feeli
%   cikr_set_negation_4          fna — grammar: "cikr-set negation"
%   istila_type                  istila
%   weeli_type                   weeli
%   wikee_type                   wikee
%   scoopalo_type                scoopalo
% Irregular (listed in data/verbs.exceptions.tsv): go ahead, isa, isko
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
