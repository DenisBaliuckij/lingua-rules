% rules/de/verbs.lp
% German verbs (features: verb_form, person, number): infinitive, present,
% simple past (Präteritum), past participle, imperative (du / ihr).
%
% Weak (regular) verbs get a class with verb_class/2; the stem is the
% infinitive without "-en":
%   weak        machen    -> mache, machst, macht ... machte ... gemacht; mach!, macht!
%   weak_t      arbeiten  -> arbeite, arbeitest, arbeitet ... arbeitete ... gearbeitet
%               (stems in -t/-d and consonant + n insert "e")
%   weak_no_ge  studieren -> studiert; besuchen -> besucht
%               (verbs in -ieren and with an inseparable prefix have no "ge-")
% Strong, mixed and modal verbs are irregular and list all their forms.
% Data (rules/de/data/): verbs.lexicon.tsv (verb_class per lemma),
% verbs.exceptions.tsv (strong, mixed and modal verbs).
%
% Not covered: separable verbs (anrufen -> ruft an), verbs in -eln/-ern
% (sammeln), the subjunctive (Konjunktiv I/II) and the formal imperative.

form(L, "verb_form=infinitive", L) :- input_lemma(L).
stem(L, @strip_suffix_add(L, 2, "")) :- input_lemma(L), verb_class(L, _).

% --- weak
form(L, "number=singular;person=first;verb_form=present", @suffix(S, "e")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=second;verb_form=present", @suffix(S, "st")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=third;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=first;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=second;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=third;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=first;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=second;verb_form=past", @suffix(S, "test")) :- verb_class(L, weak), stem(L, S).
form(L, "number=singular;person=third;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=first;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=second;verb_form=past", @suffix(S, "tet")) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;person=third;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak), stem(L, S).
form(L, "verb_form=past_participle", @prefix(P, "ge")) :- verb_class(L, weak), stem(L, S), P = @suffix(S, "t").
form(L, "number=singular;verb_form=imperative", S) :- verb_class(L, weak), stem(L, S).
form(L, "number=plural;verb_form=imperative", @suffix(S, "t")) :- verb_class(L, weak), stem(L, S).

% --- weak_t
form(L, "number=singular;person=first;verb_form=present", @suffix(S, "e")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=second;verb_form=present", @suffix(S, "est")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=third;verb_form=present", @suffix(S, "et")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=first;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=second;verb_form=present", @suffix(S, "et")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=third;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=first;verb_form=past", @suffix(S, "ete")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=second;verb_form=past", @suffix(S, "etest")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=singular;person=third;verb_form=past", @suffix(S, "ete")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=first;verb_form=past", @suffix(S, "eten")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=second;verb_form=past", @suffix(S, "etet")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;person=third;verb_form=past", @suffix(S, "eten")) :- verb_class(L, weak_t), stem(L, S).
form(L, "verb_form=past_participle", @prefix(P, "ge")) :- verb_class(L, weak_t), stem(L, S), P = @suffix(S, "et").
form(L, "number=singular;verb_form=imperative", @suffix(S, "e")) :- verb_class(L, weak_t), stem(L, S).
form(L, "number=plural;verb_form=imperative", @suffix(S, "et")) :- verb_class(L, weak_t), stem(L, S).

% --- weak_no_ge
form(L, "number=singular;person=first;verb_form=present", @suffix(S, "e")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=second;verb_form=present", @suffix(S, "st")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=third;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=first;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=second;verb_form=present", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=third;verb_form=present", @suffix(S, "en")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=first;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=second;verb_form=past", @suffix(S, "test")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;person=third;verb_form=past", @suffix(S, "te")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=first;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=second;verb_form=past", @suffix(S, "tet")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;person=third;verb_form=past", @suffix(S, "ten")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "verb_form=past_participle", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=singular;verb_form=imperative", S) :- verb_class(L, weak_no_ge), stem(L, S).
form(L, "number=plural;verb_form=imperative", @suffix(S, "t")) :- verb_class(L, weak_no_ge), stem(L, S).
