% rules/pau/verbs.lp
% Palauan verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 289430: Palauan Reference Grammar (n.d.), pages 83, 108, 126, 130, 133, 134, 140, 165, 166, 197, 264, 266, 406, 568, 570
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   causative_verbs              omȩkdȩchor — grammar: "causative verbs"
%   causative_verbs_2            omȩngamȩch — grammar: "causative verbs"
%   causative_verbs_3            omȩngim — grammar: "causative verbs"
%   olekar_type                  olȩkar
%   me_type                      me
%   mo_type                      mo
%   causative_verbs_4            ollangȩl — grammar: "causative verbs"
%   causative_verbs_in_ome_k     omȩka — grammar: "causative verbs in omȩ(k)-"
%   causative_verbs_in_ome_k_2   omȩkcharm — grammar: "causative verbs in omȩ(k)-"
%   causative_verbs_in_ome_k_3   omȩkdakt — grammar: "causative verbs in omȩ(k)-"
%   causative_verbs_in_ome_k_4   omȩkikiongȩl — grammar: "causative verbs in omȩ(k)-"
%   causative_verbs_5            orrebȩt — grammar: "causative verbs"
%   causative_verbs_in_ome_k_5   omȩkoad — grammar: "causative verbs in omȩ(k)-"
%   intransitive_action_verbs    chȩmiis — grammar: "intransitive action verbs"
%   transitive_action_verbs      kma — grammar: "transitive action verbs"
%   transitive_action_verbs_2    kolii — grammar: "transitive action verbs"
%   intransitive_action_verbs_2  lmuut — grammar: "intransitive action verbs"
%   mengiis_type                 mȩngiis
%   mengimd_type                 mȩngimd
%   mengelebed_type              mȩngȩlebȩd
%   mengesbreber_type            mȩngȩsbrebȩr
%   olluut_type                  olluut
%   olsebek_type                 olsebȩk
%   causative_verbs_6            olȩchiis — grammar: "causative verbs"
%   intransitive_action_verbs_3  ruebȩt — grammar: "intransitive action verbs"
%   transitive_action_verbs_3    rullii — grammar: "transitive action verbs"
%   intransitive_action_verbs_4  rȩmos — grammar: "intransitive action verbs"
%   intransitive_action_verbs_5  rȩmurt — grammar: "intransitive action verbs"
%   transitive_action_verbs_4    rȩmuul — grammar: "transitive action verbs"
%   transitive_action_verbs_5    sosȩbii — grammar: "transitive action verbs"
%   intransitive_action_verbs_6  suebȩk — grammar: "intransitive action verbs"
%   transitive_action_verbs_6    suesȩb — grammar: "transitive action verbs"
%   intransitive_action_verbs_7  tuobȩd — grammar: "intransitive action verbs"
% Irregular (listed in data/verbs.exceptions.tsv): mȩdȩnge, mȩlai, oba, omes
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
