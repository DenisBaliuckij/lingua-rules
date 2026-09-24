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
% Not covered: declension of comparative/superlative forms (der kleinere),
% and the stem change of "hoch" in declension (hohe) -- use the positive "hoh-"
% via adj_stem if needed.

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

% --- classes
adj_class("neu", est). adj_class("leicht", est). adj_class("schlecht", est). adj_class("laut", est). adj_class("heiß", est). adj_class("süß", est). adj_class("breit", est). adj_class("bunt", est).
adj_stem("dunkel", "dunkl"). adj_stem("teuer", "teur"). adj_stem("sauer", "saur"). adj_stem("edel", "edl").
% hoch declines on hoh- (hohe, hoher)
adj_stem("hoch", "hoh").

% --- irregular comparison
irregular("gut"). form("gut", "degree=comparative", "besser"). form("gut", "degree=superlative", "am besten").
irregular("viel"). form("viel", "degree=comparative", "mehr"). form("viel", "degree=superlative", "am meisten").
irregular("groß"). form("groß", "degree=comparative", "größer"). form("groß", "degree=superlative", "am größten").
irregular("alt"). form("alt", "degree=comparative", "älter"). form("alt", "degree=superlative", "am ältesten").
irregular("jung"). form("jung", "degree=comparative", "jünger"). form("jung", "degree=superlative", "am jüngsten").
irregular("kalt"). form("kalt", "degree=comparative", "kälter"). form("kalt", "degree=superlative", "am kältesten").
irregular("warm"). form("warm", "degree=comparative", "wärmer"). form("warm", "degree=superlative", "am wärmsten").
irregular("lang"). form("lang", "degree=comparative", "länger"). form("lang", "degree=superlative", "am längsten").
irregular("kurz"). form("kurz", "degree=comparative", "kürzer"). form("kurz", "degree=superlative", "am kürzesten").
irregular("hoch"). form("hoch", "degree=comparative", "höher"). form("hoch", "degree=superlative", "am höchsten").
irregular("nah"). form("nah", "degree=comparative", "näher"). form("nah", "degree=superlative", "am nächsten").
irregular("stark"). form("stark", "degree=comparative", "stärker"). form("stark", "degree=superlative", "am stärksten").
irregular("arm"). form("arm", "degree=comparative", "ärmer"). form("arm", "degree=superlative", "am ärmsten").
