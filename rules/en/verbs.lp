% rules/en/verbs.lp
% English verb forms: base, 3rd person singular present, past, past participle,
% present participle (feature: verb_form).
%
% Regular verbs need no entry: walk -> walks, walked, walked, walking.
% Verbs whose spelling changes are given a class with verb_class/2:
%   e_final   like  -> likes, liked, liking          (drop "e" before "-ing")
%   y_final   study -> studies, studied, studying    (consonant + "y")
%   sibilant  watch -> watches, watched, watching    ("-es" in the 3rd singular)
%   ie_final  die   -> dies, died, dying
% Verbs that double their final consonant are listed with
% double_consonant/2: stop -> stopped, stopping.
% Irregular verbs are marked irregular/1 and list all four non-base forms.
% Data (rules/en/data/): verbs.lexicon.tsv (verb_class and double_consonant
% per lemma), verbs.exceptions.tsv (irregular verbs).
%
% Not covered: the forms of "be" by person (am, are, were), modal verbs, and
% British/American variants (only one form each, e.g. "got" not "gotten").

form(L, "verb_form=base", L) :- input_lemma(L).

has_class(L) :- verb_class(L, _).
has_class(L) :- double_consonant(L, _).
regular(L) :- input_lemma(L), not irregular(L), not has_class(L).

% --- regular -----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- regular(L).
form(L, "verb_form=past", @suffix(L, "ed")) :- regular(L).
form(L, "verb_form=past_participle", @suffix(L, "ed")) :- regular(L).
form(L, "verb_form=present_participle", @suffix(L, "ing")) :- regular(L).

% --- e_final -----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- input_lemma(L), verb_class(L, e_final).
form(L, "verb_form=past", @suffix(L, "d")) :- input_lemma(L), verb_class(L, e_final).
form(L, "verb_form=past_participle", @suffix(L, "d")) :- input_lemma(L), verb_class(L, e_final).
form(L, "verb_form=present_participle", @strip_suffix_add(L, 1, "ing")) :- input_lemma(L), verb_class(L, e_final).

% --- y_final -----------------------------------------------------------------
form(L, "verb_form=present_3sg", @strip_suffix_add(L, 1, "ies")) :- input_lemma(L), verb_class(L, y_final).
form(L, "verb_form=past", @strip_suffix_add(L, 1, "ied")) :- input_lemma(L), verb_class(L, y_final).
form(L, "verb_form=past_participle", @strip_suffix_add(L, 1, "ied")) :- input_lemma(L), verb_class(L, y_final).
form(L, "verb_form=present_participle", @suffix(L, "ing")) :- input_lemma(L), verb_class(L, y_final).

% --- sibilant ----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "es")) :- input_lemma(L), verb_class(L, sibilant).
form(L, "verb_form=past", @suffix(L, "ed")) :- input_lemma(L), verb_class(L, sibilant).
form(L, "verb_form=past_participle", @suffix(L, "ed")) :- input_lemma(L), verb_class(L, sibilant).
form(L, "verb_form=present_participle", @suffix(L, "ing")) :- input_lemma(L), verb_class(L, sibilant).

% --- ie_final ----------------------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- input_lemma(L), verb_class(L, ie_final).
form(L, "verb_form=past", @suffix(L, "d")) :- input_lemma(L), verb_class(L, ie_final).
form(L, "verb_form=past_participle", @suffix(L, "d")) :- input_lemma(L), verb_class(L, ie_final).
form(L, "verb_form=present_participle", @strip_suffix_add(L, 2, "ying")) :- input_lemma(L), verb_class(L, ie_final).

% --- doubled final consonant -------------------------------------------------
form(L, "verb_form=present_3sg", @suffix(L, "s")) :- input_lemma(L), double_consonant(L, _).
form(L, "verb_form=past", @suffix(S, "ed")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
form(L, "verb_form=past_participle", @suffix(S, "ed")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
form(L, "verb_form=present_participle", @suffix(S, "ing")) :- input_lemma(L), double_consonant(L, C), S = @suffix(L, C).
