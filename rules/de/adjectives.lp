% rules/de/adjectives.lp
% German adjectives (features: degree; for attributive forms also
% declension, case, gender, number).
%
% Comparison:
%   regular (no entry needed)  klein -> kleiner, am kleinsten
%   adj_class(L, est)          neu   -> neuer, am neuesten   (superlative -esten)
%   adj_stem(L, S)             dunkel -> dunkler, am dunkelsten; declension on "dunkl-"
%   irregular                  gut -> besser, am besten; groß -> größer, am größten
% Attributive declension (every adjective, on its stem):
%   strong  (no article)          guter Wein, gute Milch, gutes Brot, gute Weine
%   weak    (after der/die/das)   der gute Wein ...
%   mixed   (after ein/kein/mein) ein guter Wein ...
% Declension keys: "case=...;declension=...;gender=...;number=singular" and
% "case=...;declension=...;number=plural".
%
% Data (rules/de/data/): adjectives.lexicon.tsv (adj_class, adj_stem per
% lemma; "hoch" declines on "hoh-"), adjectives.exceptions.tsv (irregular
% comparison).
%
% Not covered: declension of comparative/superlative forms (der kleinere).

form(L, "degree=positive", L) :- input_lemma(L).

has_stem(L) :- adj_stem(L, _).
stem(L, S) :- input_lemma(L), adj_stem(L, S).
stem(L, L) :- input_lemma(L), not has_stem(L).

% --- comparison
form(L, "degree=comparative", @suffix(S, "er")) :- stem(L, S), not irregular(L).
form(L, "degree=superlative", @prefix(P, "am ")) :- input_lemma(L), not irregular(L), not adj_class(L, est), P = @suffix(L, "sten").
form(L, "degree=superlative", @prefix(P, "am ")) :- input_lemma(L), not irregular(L), adj_class(L, est), P = @suffix(L, "esten").

% --- strong declension
form(L, "case=nominative;declension=strong;gender=masculine;number=singular", @suffix(S, "er")) :- stem(L, S).
form(L, "case=accusative;declension=strong;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=dative;declension=strong;gender=masculine;number=singular", @suffix(S, "em")) :- stem(L, S).
form(L, "case=genitive;declension=strong;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=strong;gender=feminine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=accusative;declension=strong;gender=feminine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=dative;declension=strong;gender=feminine;number=singular", @suffix(S, "er")) :- stem(L, S).
form(L, "case=genitive;declension=strong;gender=feminine;number=singular", @suffix(S, "er")) :- stem(L, S).
form(L, "case=nominative;declension=strong;gender=neuter;number=singular", @suffix(S, "es")) :- stem(L, S).
form(L, "case=accusative;declension=strong;gender=neuter;number=singular", @suffix(S, "es")) :- stem(L, S).
form(L, "case=dative;declension=strong;gender=neuter;number=singular", @suffix(S, "em")) :- stem(L, S).
form(L, "case=genitive;declension=strong;gender=neuter;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=strong;number=plural", @suffix(S, "e")) :- stem(L, S).
form(L, "case=accusative;declension=strong;number=plural", @suffix(S, "e")) :- stem(L, S).
form(L, "case=dative;declension=strong;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=strong;number=plural", @suffix(S, "er")) :- stem(L, S).

% --- weak declension
form(L, "case=nominative;declension=weak;gender=masculine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=accusative;declension=weak;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=dative;declension=weak;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=weak;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=weak;gender=feminine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=accusative;declension=weak;gender=feminine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=dative;declension=weak;gender=feminine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=weak;gender=feminine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=weak;gender=neuter;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=accusative;declension=weak;gender=neuter;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=dative;declension=weak;gender=neuter;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=weak;gender=neuter;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=weak;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=accusative;declension=weak;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=dative;declension=weak;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=weak;number=plural", @suffix(S, "en")) :- stem(L, S).

% --- mixed declension
form(L, "case=nominative;declension=mixed;gender=masculine;number=singular", @suffix(S, "er")) :- stem(L, S).
form(L, "case=accusative;declension=mixed;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=dative;declension=mixed;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=mixed;gender=masculine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=mixed;gender=feminine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=accusative;declension=mixed;gender=feminine;number=singular", @suffix(S, "e")) :- stem(L, S).
form(L, "case=dative;declension=mixed;gender=feminine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=mixed;gender=feminine;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=mixed;gender=neuter;number=singular", @suffix(S, "es")) :- stem(L, S).
form(L, "case=accusative;declension=mixed;gender=neuter;number=singular", @suffix(S, "es")) :- stem(L, S).
form(L, "case=dative;declension=mixed;gender=neuter;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=mixed;gender=neuter;number=singular", @suffix(S, "en")) :- stem(L, S).
form(L, "case=nominative;declension=mixed;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=accusative;declension=mixed;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=dative;declension=mixed;number=plural", @suffix(S, "en")) :- stem(L, S).
form(L, "case=genitive;declension=mixed;number=plural", @suffix(S, "en")) :- stem(L, S).
