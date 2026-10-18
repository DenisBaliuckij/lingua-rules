% rules/ztp/verbs.lp
% Loxicha Zapotec verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 7364: A Coatlan-Loxicha Zapotec grammar (Mexico) (2004), pages 141, 143, 151, 163, 166, 167, 171
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, affixes in data/verbs.paradigms.tsv):
%   w_prefix                     kíkê — grammar: "w- prefix"
%   otherwise_regular            kíndô — grammar: "Otherwise regular"
%   no_tone_change               lènyîzh — grammar: "No tone change"
%   dyud_type                    dyûd
%   class_b                      lâ — grammar: "class B"
%   class_b_2                    nîth — grammar: "class B"
%   class_b_3                    tìd — grammar: "class B"
%   yin_type                     yîn
% Irregular (listed in data/verbs.exceptions.tsv): díxô, yî
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @affix(L, Front, Prefix, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_affix(Class, Key, Front, Prefix, Strip, Ending), not irregular(L).
