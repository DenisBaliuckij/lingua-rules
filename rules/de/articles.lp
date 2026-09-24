% rules/de/articles.lp
% German articles and determiners (features: case, gender, number).
%
%   der                       definite article, listed in full
%   ein-words (ein_word)      ein, kein, mein, dein, sein, unser: stem + ending
%                             ein has no plural
%   der-words (der_word)      dieser, jeder, welcher: stem (lemma minus -er) + ending
% Keys: "case=...;gender=...;number=singular" and "case=...;number=plural".
%
% Not covered: "euer" (stem change eure), "ihr" (identical to other forms).

form("der", "case=nominative;gender=masculine;number=singular", "der").
form("der", "case=accusative;gender=masculine;number=singular", "den").
form("der", "case=dative;gender=masculine;number=singular", "dem").
form("der", "case=genitive;gender=masculine;number=singular", "des").
form("der", "case=nominative;gender=feminine;number=singular", "die").
form("der", "case=accusative;gender=feminine;number=singular", "die").
form("der", "case=dative;gender=feminine;number=singular", "der").
form("der", "case=genitive;gender=feminine;number=singular", "der").
form("der", "case=nominative;gender=neuter;number=singular", "das").
form("der", "case=accusative;gender=neuter;number=singular", "das").
form("der", "case=dative;gender=neuter;number=singular", "dem").
form("der", "case=genitive;gender=neuter;number=singular", "des").
form("der", "case=nominative;number=plural", "die").
form("der", "case=accusative;number=plural", "die").
form("der", "case=dative;number=plural", "den").
form("der", "case=genitive;number=plural", "der").

% --- ein_word
stem(L, L) :- input_lemma(L), det_class(L, ein_word).
form(L, "case=nominative;gender=masculine;number=singular", S) :- det_class(L, ein_word), stem(L, S).
form(L, "case=accusative;gender=masculine;number=singular", @suffix(S, "en")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=dative;gender=masculine;number=singular", @suffix(S, "em")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=genitive;gender=masculine;number=singular", @suffix(S, "es")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=nominative;gender=feminine;number=singular", @suffix(S, "e")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=accusative;gender=feminine;number=singular", @suffix(S, "e")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=dative;gender=feminine;number=singular", @suffix(S, "er")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=genitive;gender=feminine;number=singular", @suffix(S, "er")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=nominative;gender=neuter;number=singular", S) :- det_class(L, ein_word), stem(L, S).
form(L, "case=accusative;gender=neuter;number=singular", S) :- det_class(L, ein_word), stem(L, S).
form(L, "case=dative;gender=neuter;number=singular", @suffix(S, "em")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=genitive;gender=neuter;number=singular", @suffix(S, "es")) :- det_class(L, ein_word), stem(L, S).
form(L, "case=nominative;number=plural", @suffix(S, "e")) :- det_class(L, ein_word), stem(L, S), not singular_only(L).
form(L, "case=accusative;number=plural", @suffix(S, "e")) :- det_class(L, ein_word), stem(L, S), not singular_only(L).
form(L, "case=dative;number=plural", @suffix(S, "en")) :- det_class(L, ein_word), stem(L, S), not singular_only(L).
form(L, "case=genitive;number=plural", @suffix(S, "er")) :- det_class(L, ein_word), stem(L, S), not singular_only(L).

% --- der_word
stem(L, @strip_suffix_add(L, 2, "")) :- input_lemma(L), det_class(L, der_word).
form(L, "case=nominative;gender=masculine;number=singular", @suffix(S, "er")) :- det_class(L, der_word), stem(L, S).
form(L, "case=accusative;gender=masculine;number=singular", @suffix(S, "en")) :- det_class(L, der_word), stem(L, S).
form(L, "case=dative;gender=masculine;number=singular", @suffix(S, "em")) :- det_class(L, der_word), stem(L, S).
form(L, "case=genitive;gender=masculine;number=singular", @suffix(S, "es")) :- det_class(L, der_word), stem(L, S).
form(L, "case=nominative;gender=feminine;number=singular", @suffix(S, "e")) :- det_class(L, der_word), stem(L, S).
form(L, "case=accusative;gender=feminine;number=singular", @suffix(S, "e")) :- det_class(L, der_word), stem(L, S).
form(L, "case=dative;gender=feminine;number=singular", @suffix(S, "er")) :- det_class(L, der_word), stem(L, S).
form(L, "case=genitive;gender=feminine;number=singular", @suffix(S, "er")) :- det_class(L, der_word), stem(L, S).
form(L, "case=nominative;gender=neuter;number=singular", @suffix(S, "es")) :- det_class(L, der_word), stem(L, S).
form(L, "case=accusative;gender=neuter;number=singular", @suffix(S, "es")) :- det_class(L, der_word), stem(L, S).
form(L, "case=dative;gender=neuter;number=singular", @suffix(S, "em")) :- det_class(L, der_word), stem(L, S).
form(L, "case=genitive;gender=neuter;number=singular", @suffix(S, "es")) :- det_class(L, der_word), stem(L, S).
form(L, "case=nominative;number=plural", @suffix(S, "e")) :- det_class(L, der_word), stem(L, S), not singular_only(L).
form(L, "case=accusative;number=plural", @suffix(S, "e")) :- det_class(L, der_word), stem(L, S), not singular_only(L).
form(L, "case=dative;number=plural", @suffix(S, "en")) :- det_class(L, der_word), stem(L, S), not singular_only(L).
form(L, "case=genitive;number=plural", @suffix(S, "er")) :- det_class(L, der_word), stem(L, S), not singular_only(L).

det_class("ein", ein_word). det_class("kein", ein_word). det_class("mein", ein_word). det_class("dein", ein_word). det_class("sein", ein_word). det_class("unser", ein_word).
det_class("dieser", der_word). det_class("jeder", der_word). det_class("welcher", der_word).
singular_only("ein").
