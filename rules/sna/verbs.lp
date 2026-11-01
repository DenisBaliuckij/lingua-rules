% rules/sna/verbs.lp
% Shona verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 11484: Shona Basic Course (1965), pages 57, 58, 74, 85, 123, 145, 146, 193
%   doc 11485: Shona Basic Course: Student Text (1965), pages 76, 125, 147, 148, 195
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   low_verbs_in_the_no_tense    kuuya, kuvaka, kudzidzisa, kurima ... — grammar: "Low verbs in the /-no-/ tense"
%   kuenda_type                  kuenda
%   kusanda_type                 kusanda
%   kupedza_type                 kupedza, kurera, kutengesa
%   low_verbs                    kupinda, kutaura, kuverenga — grammar: "low verbs"
%   kusvika_type                 kusvika
%   kufambira_type               kufambira
%   low_verbs_in_the_no_tense_2  kunyora — grammar: "Low verbs in the /-no-/ tense"
%   low_verbs_in_the_no_tense_3  kurapa — grammar: "Low verbs in the /-no-/ tense"
%   high_verbs                   kutamba — grammar: "High verbs"
%   high_verbs_2                 kutenga — grammar: "High verbs"
%   low_verbs_in_the_no_tense_4  kuweza — grammar: "Low verbs in the /-no-/ tense"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
