% rules/dzg/verbs.lp
% Dazaga verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 15643: A Grammar of Dazaga (2016), pages 87, 94, 104, 105, 118, 121
%   doc 296303: A Grammar Sketch of Dazaga (2015), pages 67, 111, 112, 125, 128
%   doc 848806: Notes grammaticales et vocabulaire de la langue Daza (n.d.), pages 10, 12, 20, 21
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   intransitive_lvcs            b — grammar: "intransitive LVCs"
%   ivos_type                    ivos
%   ivoz_type                    ivoz
%   perfective_simple_sa_verbs   káz — grammar: "(Perfective) simple Sa verbs"
%   perfective_simple_transitive_verbs báb — grammar: "(Perfective) simple transitive verbs"
%   perfective_reflexive_lvcs    dɪ̀lɛ́dɪ́ — grammar: "(Perfective) reflexive LVCs"
%   os_type                      ^os
%   bald_type                    bald
%   perfective_intransitive_lvcs bìɡìɾé — grammar: "(Perfective) intransitive LVCs"
%   donner_type                  donner
%   imperative_transitive_lvcs   dɪ̀lɛ́ — grammar: "Imperative transitive LVCs"
%   jf_type                      jf^
%   perfective_simple_sa_verbs_2 jɪ́d — grammar: "(Perfective) simple Sa verbs"
%   perfective_simple_reflexive_verbs tàʊ — grammar: "(Perfective) simple reflexive verbs"
%   imperative_transitive_lvcs_2 dɪlɛ — grammar: "Imperative transitive LVCs"
%   perfective_simple_reflexive_verbs_2 tàʊ́ — grammar: "(Perfective) simple reflexive verbs"
% Irregular (listed in data/verbs.exceptions.tsv): eter, etre
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
