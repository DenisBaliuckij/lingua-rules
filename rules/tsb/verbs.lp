% rules/tsb/verbs.lp
% Tsamakko verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 25224: A Grammar of Ts'amakko (2014), pages 84, 85, 86, 87, 90, 93, 148, 170, 189, 192, 195
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   cvvc_stem_a                  ooy — grammar: "CVVC stem (A)"
%   future_negative              ka-is-ní, žoq’-am-ní — grammar: "Future Negative"
%   cons_a                       ká-ís-á — grammar: "Cons. A"
%   non_past_negative            ká-ís-í, žóq’-ám-í — grammar: "Non-Past Negative"
%   future_negative_2            ká-ís-ú, žóq’-ám-ú — grammar: "Future Negative"
%   past_negative                ká-ís-á, žóq’q’-ám-á — grammar: "Past Negative"
%   jussive                      žoq’-am-á, ka-is-á — grammar: "Jussive"
%   cons_a_2                     žóq’-ám-ó — grammar: "Cons. A"
%   ka_is_na_type                ká-ís-na, žóq’-ám-na
%   ka_is_ni_type                ká-ís-ní, žóq’-ám-ní
%   consecutive_a                úg-á — grammar: "Consecutive A"
%   consecutive_b                ží-ó — grammar: "Consecutive B"
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
