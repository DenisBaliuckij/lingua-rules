% Participles, separate from verbs.lp. Lemma is the infinitive (ontology § 1581–1585).
% Attested: играющий, рисующий, кричащий, несший, разыгранный.
part_class("играть", pres_act_aj).
part_class("рисовать", pres_act_ova).
part_class("кричать", pres_act_2).
part_class("нести", past_act_sh).
part_class("разыграть", past_pass_nn).

form(L, "case=nominative;gender=masculine;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "ющий")) :- input_lemma(L), part_class(L, pres_act_aj).
form(L, "case=nominative;gender=feminine;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "ющая")) :- input_lemma(L), part_class(L, pres_act_aj).
form(L, "case=nominative;gender=neuter;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "ющее")) :- input_lemma(L), part_class(L, pres_act_aj).
form(L, "case=nominative;number=plural;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "ющие")) :- input_lemma(L), part_class(L, pres_act_aj).

form(L, "case=nominative;gender=masculine;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 5, "ующий")) :- input_lemma(L), part_class(L, pres_act_ova).
form(L, "case=nominative;gender=feminine;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 5, "ующая")) :- input_lemma(L), part_class(L, pres_act_ova).
form(L, "case=nominative;gender=neuter;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 5, "ующее")) :- input_lemma(L), part_class(L, pres_act_ova).
form(L, "case=nominative;number=plural;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 5, "ующие")) :- input_lemma(L), part_class(L, pres_act_ova).

form(L, "case=nominative;gender=masculine;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "щий")) :- input_lemma(L), part_class(L, pres_act_2).
form(L, "case=nominative;gender=feminine;number=singular;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "щая")) :- input_lemma(L), part_class(L, pres_act_2).
form(L, "case=nominative;number=plural;tense=present;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "щие")) :- input_lemma(L), part_class(L, pres_act_2).

form(L, "case=nominative;gender=masculine;number=singular;tense=past;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "ший")) :- input_lemma(L), part_class(L, past_act_sh).
form(L, "case=nominative;gender=feminine;number=singular;tense=past;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "шая")) :- input_lemma(L), part_class(L, past_act_sh).
form(L, "case=nominative;number=plural;tense=past;verb_form=participle;voice=active", @strip_suffix_add(L, 2, "шие")) :- input_lemma(L), part_class(L, past_act_sh).

form(L, "case=nominative;gender=masculine;number=singular;tense=past;verb_form=participle;voice=passive", @strip_suffix_add(L, 2, "нный")) :- input_lemma(L), part_class(L, past_pass_nn).
form(L, "case=nominative;gender=feminine;number=singular;tense=past;verb_form=participle;voice=passive", @strip_suffix_add(L, 2, "нная")) :- input_lemma(L), part_class(L, past_pass_nn).
form(L, "case=nominative;number=plural;tense=past;verb_form=participle;voice=passive", @strip_suffix_add(L, 2, "нные")) :- input_lemma(L), part_class(L, past_pass_nn).
form(L, "gender=masculine;number=singular;variant=short;verb_form=participle;voice=passive", @strip_suffix_add(L, 2, "н")) :- input_lemma(L), part_class(L, past_pass_nn).
form(L, "gender=feminine;number=singular;variant=short;verb_form=participle;voice=passive", @strip_suffix_add(L, 2, "на")) :- input_lemma(L), part_class(L, past_pass_nn).
form(L, "number=plural;variant=short;verb_form=participle;voice=passive", @strip_suffix_add(L, 2, "ны")) :- input_lemma(L), part_class(L, past_pass_nn).
