% rules/zko/nouns.lp
% Kott nouns: generated from grammars in the DocumentCatalog (tools/grammar_rules; LLM-
% extracted paradigms, classes induced from them). Review before relying on it.
%
% Sources (document id in the DocumentCatalog):
%   doc 389864: Abriß der Kottischen Grammatik (1998), pages 75, 76, 77, 85, 86, 110, 112, 115, 129, 134, 136, 139, 140, 143, 147, 154
%
% Classes (noun_class/2 in data/nouns.lexicon.tsv, endings in data/nouns.paradigms.tsv):
%   mannliche_deklination        ∼ — grammar: "männliche Deklination"
%   unbelebte_deklination        hu:‚ — grammar: "unbelebte Deklination"
%   mannl_kl                     mankara — grammar: "männl. Kl."
%   a_m_type                     ∼a:m
%   a_m_an_type                  ∼a:m-an
%
% Not covered: anything the selected grammar pages do not show as a full paradigm;
% a class is only as complete as the forms the grammar printed for its members.

form(L, Key, @strip_suffix_add(L, Strip, Ending)) :- input_lemma(L),
    noun_class(L, Class), paradigm_ending(Class, Key, Strip, Ending), not irregular(L).
