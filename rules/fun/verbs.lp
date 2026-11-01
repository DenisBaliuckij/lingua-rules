% rules/fun/verbs.lp
% Fulniô verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 78088: Fulniô (Yahthe) Syntax Structure: Preliminary Version (2009), pages 11, 12, 13, 21
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   verb_1_stem_9                ehthe-nkya — grammar: "VERB 1 Stem 9"
%   verb_1_stem_8                khfael-neka — grammar: "VERB 1 Stem 8"
%   verb_3_stem_4                ekhdeka — grammar: "VERB 3 Stem 4"
%   verb_2_stem_9                esfo-ne — grammar: "VERB 2 Stem 9"
%   verb_2_stem_2                eča — grammar: "VERB 2 Stem 2"
%   verb_1_stem_2                ečkya — grammar: "VERB 1 Stem 2"
%   verb_3_stem_10               meh-neka — grammar: "VERB 3 Stem 10"
%   verb_2_stem_1                telya — grammar: "VERB 2 Stem 1"
%   verb_2_stem_8                táth-ne — grammar: "VERB 2 Stem 8"
%   verb_4_stem_11               ešiš-ne — grammar: "VERB 4 Stem 11"
%   verb_4_stem_3                fétfe — grammar: "VERB 4 Stem 3"
%   verb_3_stem_3                thulkya — grammar: "VERB 3 Stem 3"
%   verb_4_stem_10               tɔ́l-ne — grammar: "VERB 4 Stem 10"
%   verb_4_stem_4                etháyi — grammar: "VERB 4 Stem 4"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
