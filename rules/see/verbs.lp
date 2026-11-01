% rules/see/verbs.lp
% Seneca verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 38110: A Grammar of the Seneca Language (1994), pages 117, 118, 133, 161
%   doc 388997: A Grammar of Mingo (Chapter 1: The Basic Form of the Noun) (n.d.), pages 10, 30, 31, 61
%   doc 814890: Onondowaga'ga:we:no': The Seneca Verb: Labeling the Ancient Voice (2007), pages 25, 29, 33, 34, 44, 54, 58, 83, 84, 88, 107, 109, 120
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   nigo_heh_type                nigo:heh
%   dwe_nded_type                dwe:nded
%   gadeni_no_type               gadeni:no
%   gasha_t_type                 gasha:t
%   agatowasta_type              agatowasta
%   buy_type                     buy
%   gadaodiyos_type              gadaodiyos
%   gahsa_type                   gahsa
%   gehgwat_type                 gehgwat
%   doine_type                   doine
%   read_type                    read
%   dege_snye_type               dege:snye
%   da_wage_snye_type            da:wage:snye
%   gateh_type                   ga•teh
%   hotge_snye_type              hotge:snye
%   tsa_tge_snye_h_type          tsa'tge:snye:h
%   tsega_te_type                tsega:'te
%   tsaga_te_type                tsa•ga:'te
%   dewagesnye_type              dewagesnye
%   ho_gii_te_type               ho'gii'te
%   ega_te_type                  ega'te
%   c_stem_verb_stems            nöstát — grammar: "C-Stem Verb Stems"
%   c_stem_verb_stems_2          ya'tanöstát — grammar: "C-Stem Verb Stems"
%   c_stem_fixed_active_verb     tukast — grammar: "C-Stem Fixed Active Verb"
%   x_stem_switch_active_verb_base hutö — grammar: "X-Stem Switch Active Verb Base"
%   nok_type                     nök
%   c_stem_verb_stems_3          nöstatôôk — grammar: "C-Stem Verb Stems"
% Irregular (listed in data/verbs.exceptions.tsv): atö
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
