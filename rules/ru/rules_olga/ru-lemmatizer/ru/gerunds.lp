% Gerunds, separate from verbs.lp. Ontology § 1589–1593. Lemma is the infinitive.
ger_class("играть", impf_ya).
ger_class("рисовать", impf_ova).
ger_class("кричать", impf_a).
ger_class("разыграть", perf_v).
ger_class("нести", perf_shi).

form(L, "aspect=imperfective;verb_form=converb", @strip_suffix_add(L, 2, "я")) :- input_lemma(L), ger_class(L, impf_ya).
form(L, "aspect=imperfective;verb_form=converb", @strip_suffix_add(L, 5, "уя")) :- input_lemma(L), ger_class(L, impf_ova).
form(L, "aspect=imperfective;verb_form=converb", @strip_suffix_add(L, 3, "а")) :- input_lemma(L), ger_class(L, impf_a).
form(L, "aspect=perfective;verb_form=converb", @strip_suffix_add(L, 2, "в")) :- input_lemma(L), ger_class(L, perf_v).
form(L, "aspect=perfective;verb_form=converb", @strip_suffix_add(L, 2, "ши")) :- input_lemma(L), ger_class(L, perf_shi).
