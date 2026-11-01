% rules/dec/verbs.lp
% Dagik verbs: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 89500: A Grammar of Dagik: A Kordofanian Language of Sudan (2014), pages 81, 126, 127, 128, 137, 176, 241, 242
%
% Classes (verb_class/2 in data/verbs.lexicon.tsv, endings in data/verbs.paradigms.tsv):
%   an_type                      an
%   p3c                          rəg — grammar: "P3c"
%   extended_perfective_form_with_applicativ tɔŋ-a — grammar: "extended perfective form with applicative-benefactive extension"
%   extended_perfective_form_with_applicativ_2 səŋ-ɪ — grammar: "extended perfective form with applicative-locative extension"
%   p_a_type                     pəɽ-a
%   rg_type                      rəg-ɔ
% Irregular (listed in data/verbs.exceptions.tsv): nəŋ-a, səŋ-a, tasɔ, taw, ðʊb-a, ʊnd-ɔ
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    verb_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
