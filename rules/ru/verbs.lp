% rules/ru/verbs.lp
% Russian verbs (features: verb_form, person, number, gender): infinitive,
% present (for perfective verbs this is the future), past, imperative.
% Classes (verb_class/2):
%   conj1_aj    читать   -> читаю, читаешь ... читают; читал; читай   (also -ять, -еть: гулять, уметь)
%   conj1_ova   рисовать -> рисую, рисуешь ... рисуют; рисовал; рисуй
%   conj2       говорить -> говорю, говоришь ... говорят; говорил; говори  (also смотреть)
%   conj2_hush  учить    -> учу, учишь ... учат (stem in ж/ч/ш/щ)
% The past tense is the infinitive without -ть plus -л/-ла/-ло/-ли.
% Past keys: "gender=...;number=singular;verb_form=past", "number=plural;verb_form=past".
% Irregular verbs list all forms; "быть" has past, future and imperative.
% Data: verbs.lexicon.tsv (verb_class per lemma), verbs.exceptions.tsv
% (irregular verbs).
%
% Not covered: consonant alternations in regular classes (любить -> люблю is
% listed), aspect pairs, participles and gerunds, reflexive -ся verbs.

form(L, "verb_form=infinitive", L) :- input_lemma(L).
past_stem(L, @strip_suffix_add(L, 2, "")) :- input_lemma(L), verb_class(L, _).
form(L, "gender=masculine;number=singular;verb_form=past", @suffix(S, "л")) :- past_stem(L, S).
form(L, "gender=feminine;number=singular;verb_form=past", @suffix(S, "ла")) :- past_stem(L, S).
form(L, "gender=neuter;number=singular;verb_form=past", @suffix(S, "ло")) :- past_stem(L, S).
form(L, "number=plural;verb_form=past", @suffix(S, "ли")) :- past_stem(L, S).

% --- conj1_aj
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 2, "ю")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 2, "ешь")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 2, "ет")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 2, "ем")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 2, "ете")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 2, "ют")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 2, "й")) :- input_lemma(L), verb_class(L, conj1_aj).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 2, "йте")) :- input_lemma(L), verb_class(L, conj1_aj).

% --- conj1_ova
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 5, "ую")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 5, "уешь")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 5, "ует")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 5, "уем")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 5, "уете")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 5, "уют")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 5, "уй")) :- input_lemma(L), verb_class(L, conj1_ova).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 5, "уйте")) :- input_lemma(L), verb_class(L, conj1_ova).

% --- conj2
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 3, "ю")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 3, "ишь")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 3, "ит")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 3, "им")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 3, "ят")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 3, "и")) :- input_lemma(L), verb_class(L, conj2).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2).

% --- conj2_hush
form(L, "number=singular;person=first;verb_form=present", @strip_suffix_add(L, 3, "у")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=singular;person=second;verb_form=present", @strip_suffix_add(L, 3, "ишь")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=singular;person=third;verb_form=present", @strip_suffix_add(L, 3, "ит")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;person=first;verb_form=present", @strip_suffix_add(L, 3, "им")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;person=second;verb_form=present", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;person=third;verb_form=present", @strip_suffix_add(L, 3, "ат")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=singular;verb_form=imperative", @strip_suffix_add(L, 3, "и")) :- input_lemma(L), verb_class(L, conj2_hush).
form(L, "number=plural;verb_form=imperative", @strip_suffix_add(L, 3, "ите")) :- input_lemma(L), verb_class(L, conj2_hush).
