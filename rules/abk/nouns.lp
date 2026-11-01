% rules/abk/nouns.lp
% Abkhaz nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 48482: Abkhaz: A Comprehensive Self-Tutor (2010), pages 24, 33, 34, 45, 55, 63, 65, 67, 79, 152, 153, 307, 308, 309
%   doc 389772: Abkhaz (1979), pages 82
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   non_human_nouns              ааны — grammar: "Non-human Nouns"
%   human_nouns                  аашьааы — grammar: "Human Nouns"
%   human_nouns_2                ааыза — grammar: "Human Nouns"
%   human_nouns_3                аб — grammar: "Human Nouns"
%   human_nouns_4                абду — grammar: "Human Nouns"
%   non_human_nouns_2            аеш — grammar: "Non-human Nouns"
%   human_nouns_5                аиаҳәшьа — grammar: "Human Nouns"
%   non_human_nouns_3            акәардз — grammar: "Non-human Nouns"
%   non_human_nouns_4            ала — grammar: "Non-human Nouns"
%   human_nouns_6                ан — grammar: "Human Nouns"
%   human_nouns_7                ана — grammar: "Human Nouns"
%   human_nouns_8                анду — grammar: "Human Nouns"
%   human_nouns_9                анхааы — grammar: "Human Nouns"
%   non_human_nouns_5            анцәа — grammar: "Non-human Nouns"
%   human_nouns_10               арцааы — grammar: "Human Nouns"
%   human_nouns_11               асас — grammar: "Human Nouns"
%   human_nouns_12               асахьаҭыхаы — grammar: "Human Nouns"
%   non_human_nouns_6            ауардын — grammar: "Non-human Nouns"
%   human_nouns_13               ахаҭарнак — grammar: "Human Nouns"
%   human_nouns_14               ахьча — grammar: "Human Nouns"
%   non_human_nouns_7            ахьшь — grammar: "Non-human Nouns"
%   non_human_nouns_8            ахьшьцба — grammar: "Non-human Nouns"
%   non_human_nouns_9            ахәшә — grammar: "Non-human Nouns"
%   human_nouns_15               ацааы — grammar: "Human Nouns"
%   non_human_nouns_10           ацла — grammar: "Non-human Nouns"
%   non_human_nouns_11           ацәы — grammar: "Non-human Nouns"
%   non_human_nouns_12           ашаха — grammar: "Non-human Nouns"
%   non_human_nouns_13           ашә — grammar: "Non-human Nouns"
%   human_nouns_16               ашәары — grammar: "Human Nouns"
%   non_human_nouns_14           ашәкәы — grammar: "Non-human Nouns"
%   non_human_nouns_15           аџьма — grammar: "Non-human Nouns"
%   human_nouns_17               аҕьыч — grammar: "Human Nouns"
%   human_nouns_18               аҧсы — grammar: "Human Nouns"
%   human_nouns_19               аҧшәма — grammar: "Human Nouns"
%   human_nouns_20               аҧҳа — grammar: "Human Nouns"
%   human_nouns_21               аҭакәажә — grammar: "Human Nouns"
%   human_nouns_22               аҭаҳмада — grammar: "Human Nouns"
%   human_nouns_23               аҳақьым — grammar: "Human Nouns"
%   non_human_nouns_16           аҽы — grammar: "Non-human Nouns"
%   non_human_nouns_17           аӡ — grammar: "Non-human Nouns"
%   non_human_nouns_18           аӡиа — grammar: "Non-human Nouns"
%   non_human_nouns_19           аӡиас — grammar: "Non-human Nouns"
%   non_human_nouns_20           аӡы — grammar: "Non-human Nouns"
%   human_nouns_24               аӡҕаб — grammar: "Human Nouns"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
